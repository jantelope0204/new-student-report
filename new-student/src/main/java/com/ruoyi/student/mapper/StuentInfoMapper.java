package com.ruoyi.student.mapper;

import com.ruoyi.student.domain.StuentInfo;

import java.util.List;

/**
 * studentInfoMapper接口
 * 
 * @author 西亚
 * @date 2021-01-28
 */
public interface StuentInfoMapper 
{
    /**
     * 查询studentInfo
     * 
     * @param stuId studentInfoID
     * @return studentInfo
     */
    public StuentInfo selectStuentInfoById(String stuId);

    /**
     * 查询studentInfo列表
     * 
     * @param stuentInfo studentInfo
     * @return studentInfo集合
     */
    public List<StuentInfo> selectStuentInfoList(StuentInfo stuentInfo);

    /**
     * 新增studentInfo
     * 
     * @param stuentInfo studentInfo
     * @return 结果
     */
    public int insertStuentInfo(StuentInfo stuentInfo);

    /**
     * 修改studentInfo
     * 
     * @param stuentInfo studentInfo
     * @return 结果
     */
    public int updateStuentInfo(StuentInfo stuentInfo);

    /**
     * 删除studentInfo
     * 
     * @param stuId studentInfoID
     * @return 结果
     */
    public int deleteStuentInfoById(String stuId);

    /**
     * 批量删除studentInfo
     * 
     * @param stuIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteStuentInfoByIds(String[] stuIds);
    public int getCountNumber();
    public int getSuccessNumber();
    public int getFailNumber();
    public List<String> getDistinctColumn(String column);
}
