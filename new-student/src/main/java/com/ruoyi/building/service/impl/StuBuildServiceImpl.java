package com.ruoyi.building.service.impl;

import java.util.List;

import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.building.mapper.StuBuildMapper;
import com.ruoyi.building.domain.StuBuild;
import com.ruoyi.building.service.IStuBuildService;

/**
 * 宿舍楼Service业务层处理
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
@Service
public class StuBuildServiceImpl implements IStuBuildService 
{
    @Autowired
    private StuBuildMapper stuBuildMapper;


    /**
     * 查询宿舍楼
     * 
     * @param buildId 宿舍楼ID
     * @return 宿舍楼
     */
    @Override
    public StuBuild selectStuBuildById(String buildId)
    {
        return stuBuildMapper.selectStuBuildById(buildId);
    }

    /**
     * 查询宿舍楼列表
     * 
     * @param stuBuild 宿舍楼
     * @return 宿舍楼
     */
    @Override
    public List<StuBuild> selectStuBuildList(StuBuild stuBuild)
    {
        List<StuBuild> list = stuBuildMapper.selectStuBuildList(stuBuild);
        return stuBuildMapper.selectStuBuildList(stuBuild);
    }

    /**
     * 新增宿舍楼
     * 
     * @param stuBuild 宿舍楼
     * @return 结果
     */
    @Override
    public int insertStuBuild(StuBuild stuBuild)
    {
        stuBuild.setBuildId(IdUtils.fastUUID());
        return stuBuildMapper.insertStuBuild(stuBuild);
    }

    /**
     * 修改宿舍楼
     * 
     * @param stuBuild 宿舍楼
     * @return 结果
     */
    @Override
    public int updateStuBuild(StuBuild stuBuild)
    {
        return stuBuildMapper.updateStuBuild(stuBuild);
    }

    /**
     * 批量删除宿舍楼
     * 
     * @param buildIds 需要删除的宿舍楼ID
     * @return 结果
     */
    @Override
    public int deleteStuBuildByIds(String[] buildIds)
    {
        return stuBuildMapper.deleteStuBuildByIds(buildIds);
    }

    /**
     * 删除宿舍楼信息
     * 
     * @param buildId 宿舍楼ID
     * @return 结果
     */
    @Override
    public int deleteStuBuildById(String buildId)
    {
        return stuBuildMapper.deleteStuBuildById(buildId);
    }
}
