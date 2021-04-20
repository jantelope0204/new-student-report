package com.ruoyi.stuRoomInfo.mapper;

import java.util.List;
import com.ruoyi.stuRoomInfo.domain.StuRoomInfo;

/**
 * 学生入住信息Mapper接口
 * 
 * @author 张西亚
 * @date 2021-04-20
 */
public interface StuRoomInfoMapper 
{
    /**
     * 查询学生入住信息
     * 
     * @param id 学生入住信息ID
     * @return 学生入住信息
     */
    public StuRoomInfo selectStuRoomInfoById(String id);

    /**
     * 查询学生入住信息列表
     * 
     * @param stuRoomInfo 学生入住信息
     * @return 学生入住信息集合
     */
    public List<StuRoomInfo> selectStuRoomInfoList(StuRoomInfo stuRoomInfo);

    /**
     * 新增学生入住信息
     * 
     * @param stuRoomInfo 学生入住信息
     * @return 结果
     */
    public int insertStuRoomInfo(StuRoomInfo stuRoomInfo);

    /**
     * 修改学生入住信息
     * 
     * @param stuRoomInfo 学生入住信息
     * @return 结果
     */
    public int updateStuRoomInfo(StuRoomInfo stuRoomInfo);

    /**
     * 删除学生入住信息
     * 
     * @param id 学生入住信息ID
     * @return 结果
     */
    public int deleteStuRoomInfoById(String id);

    /**
     * 批量删除学生入住信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteStuRoomInfoByIds(String[] ids);
}
