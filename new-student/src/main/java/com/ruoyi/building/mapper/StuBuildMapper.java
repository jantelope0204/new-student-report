package com.ruoyi.building.mapper;

import java.util.List;
import com.ruoyi.building.domain.StuBuild;

/**
 * 宿舍楼Mapper接口
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
public interface StuBuildMapper 
{
    /**
     * 查询宿舍楼
     * 
     * @param buildId 宿舍楼ID
     * @return 宿舍楼
     */
    public StuBuild selectStuBuildById(String buildId);

    /**
     * 查询宿舍楼列表
     * 
     * @param stuBuild 宿舍楼
     * @return 宿舍楼集合
     */
    public List<StuBuild> selectStuBuildList(StuBuild stuBuild);

    /**
     * 新增宿舍楼
     * 
     * @param stuBuild 宿舍楼
     * @return 结果
     */
    public int insertStuBuild(StuBuild stuBuild);

    /**
     * 修改宿舍楼
     * 
     * @param stuBuild 宿舍楼
     * @return 结果
     */
    public int updateStuBuild(StuBuild stuBuild);

    /**
     * 删除宿舍楼
     * 
     * @param buildId 宿舍楼ID
     * @return 结果
     */
    public int deleteStuBuildById(String buildId);

    /**
     * 批量删除宿舍楼
     * 
     * @param buildIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteStuBuildByIds(String[] buildIds);
}
