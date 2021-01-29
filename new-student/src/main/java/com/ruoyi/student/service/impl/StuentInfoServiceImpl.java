package com.ruoyi.student.service.impl;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.student.domain.StuentInfo;
import com.ruoyi.student.mapper.StuentInfoMapper;
import com.ruoyi.student.service.IStuentInfoService;
import com.ruoyi.utils.CreateStudent;
import com.ruoyi.utils.SequenceUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;

/**
 * studentInfoService业务层处理
 * 
 * @author 西亚
 * @date 2021-01-28
 */
@Service
public class StuentInfoServiceImpl implements IStuentInfoService 
{
    @Autowired
    private StuentInfoMapper stuentInfoMapper;
    @Autowired
    private SequenceUtils sequenceUtils;

    /**
     * 查询studentInfo
     * 
     * @param stuId studentInfoID
     * @return studentInfo
     */
    @Override
    public StuentInfo selectStuentInfoById(String stuId)
    {
        return stuentInfoMapper.selectStuentInfoById(stuId);
    }

    /**
     * 查询studentInfo列表
     * 
     * @param stuentInfo studentInfo
     * @return studentInfo
     */
    @Override
    public List<StuentInfo> selectStuentInfoList(StuentInfo stuentInfo)
    {
        return stuentInfoMapper.selectStuentInfoList(stuentInfo);
    }

    /**
     * 新增studentInfo
     * 
     * @param stuentInfo studentInfo
     * @return 结果
     */
    @Override
    public int insertStuentInfo(StuentInfo stuentInfo)
    {
        for (int i = 0; i < 200; i++) {
            StuentInfo student = CreateStudent.getStudent();
            //学号生成规则
            //院系代码 年月日 四位流水号
            String stuDept = student.getStuDept();
            String stuId = getNextSerialNo(DateUtils.getDate(), stuDept);
            student.setStuId(stuId);
            stuentInfoMapper.insertStuentInfo(student);
        }
        return 200;
    }

    /**
     * 修改studentInfo
     * 
     * @param stuentInfo studentInfo
     * @return 结果
     */
    @Override
    public int updateStuentInfo(StuentInfo stuentInfo)
    {
        return stuentInfoMapper.updateStuentInfo(stuentInfo);
    }

    /**
     * 批量删除studentInfo
     * 
     * @param stuIds 需要删除的studentInfoID
     * @return 结果
     */
    @Override
    public int deleteStuentInfoByIds(String[] stuIds)
    {
        return stuentInfoMapper.deleteStuentInfoByIds(stuIds);
    }

    /**
     * 删除studentInfo信息
     * 
     * @param stuId studentInfoID
     * @return 结果
     */
    @Override
    public int deleteStuentInfoById(String stuId)
    {
        return stuentInfoMapper.deleteStuentInfoById(stuId);
    }

    @Override
    public int getCountNumber() {
        return stuentInfoMapper.getCountNumber();
    }

    @Override
    public int getSuccessNumber() {
        return stuentInfoMapper.getSuccessNumber();
    }

    @Override
    public int getFailNumber() {
        return stuentInfoMapper.getFailNumber();
    }

    @Override
    public List<String> getDistinctColumn(String column) {
        return stuentInfoMapper.getDistinctColumn(column);
    }

    public String getNextSerialNo(String date,String key) {
        if(date == null || "".equals(date)) {
            date = DateUtils.dateTime();
        }
        String head = key+date.replaceAll("-","");
        return head+sequenceUtils.getSeq(head, 4);
    }
}
