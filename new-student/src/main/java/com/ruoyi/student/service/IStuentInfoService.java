package com.ruoyi.student.service;

import com.ruoyi.student.domain.StuentInfo;

import java.util.List;

/**
 * studentInfoService接口
 * 
 * @author 西亚
 * @date 2021-01-28
 */
public interface IStuentInfoService 
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
     * 批量删除studentInfo
     * 
     * @param stuIds 需要删除的studentInfoID
     * @return 结果
     */
    public int deleteStuentInfoByIds(String[] stuIds);

    /**
     * 删除studentInfo信息
     * 
     * @param stuId studentInfoID
     * @return 结果
     */
    public int deleteStuentInfoById(String stuId);

    public int getCountNumber();
    public int getSuccessNumber();
    public int getFailNumber();
    public List<String> getDistinctColumn(String column);

}
