package com.ruoyi.stuRoomInfo.service.impl;

import java.util.List;

import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.student.domain.StuentInfo;
import com.ruoyi.student.service.IStuentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.stuRoomInfo.mapper.StuRoomInfoMapper;
import com.ruoyi.stuRoomInfo.domain.StuRoomInfo;
import com.ruoyi.stuRoomInfo.service.IStuRoomInfoService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 学生入住信息Service业务层处理
 * 
 * @author 张西亚
 * @date 2021-04-20
 */
@Service
public class StuRoomInfoServiceImpl implements IStuRoomInfoService 
{
    @Autowired
    private StuRoomInfoMapper stuRoomInfoMapper;
    @Autowired
    private IStuentInfoService stuentInfoService;

    /**
     * 查询学生入住信息
     * 
     * @param id 学生入住信息ID
     * @return 学生入住信息
     */
    @Override
    public StuRoomInfo selectStuRoomInfoById(String id)
    {
        return stuRoomInfoMapper.selectStuRoomInfoById(id);
    }

    /**
     * 查询学生入住信息列表
     * 
     * @param stuRoomInfo 学生入住信息
     * @return 学生入住信息
     */
    @Override
    public List<StuRoomInfo> selectStuRoomInfoList(StuRoomInfo stuRoomInfo)
    {
        return stuRoomInfoMapper.selectStuRoomInfoList(stuRoomInfo);
    }

    /**
     * 新增学生入住信息
     * 
     * @param stuRoomInfo 学生入住信息
     * @return 结果
     */
    @Transactional
    @Override
    public int insertStuRoomInfo(StuRoomInfo stuRoomInfo)
    {
        stuRoomInfo.setId(IdUtils.fastUUID());
        String stuId = stuRoomInfo.getStuId();
        StuentInfo stuentInfo = stuentInfoService.selectStuentInfoById(stuId);
        String roomId = stuentInfo.getRoomId();
        if (roomId != null) {
            return 0;
        }
        stuentInfo.setRoomId(stuRoomInfo.getRoomId());
        stuentInfoService.updateStuentInfo(stuentInfo);
        return stuRoomInfoMapper.insertStuRoomInfo(stuRoomInfo);
    }

    /**
     * 修改学生入住信息
     * 
     * @param stuRoomInfo 学生入住信息
     * @return 结果
     */
    @Override
    public int updateStuRoomInfo(StuRoomInfo stuRoomInfo)
    {
        return stuRoomInfoMapper.updateStuRoomInfo(stuRoomInfo);
    }

    /**
     * 批量删除学生入住信息
     * 
     * @param ids 需要删除的学生入住信息ID
     * @return 结果
     */
    @Override
    public int deleteStuRoomInfoByIds(String[] ids)
    {
        return stuRoomInfoMapper.deleteStuRoomInfoByIds(ids);
    }

    /**
     * 删除学生入住信息信息
     * 
     * @param id 学生入住信息ID
     * @return 结果
     */
    @Override
    public int deleteStuRoomInfoById(String id)
    {
        return stuRoomInfoMapper.deleteStuRoomInfoById(id);
    }
}
