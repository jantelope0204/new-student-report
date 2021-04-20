package com.ruoyi.building.controller;

import java.util.List;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.building.domain.StuBuild;
import com.ruoyi.building.service.IStuBuildService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 宿舍楼Controller
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
@RestController
@RequestMapping("/building/building")
public class StuBuildController extends BaseController
{
    @Autowired
    private IStuBuildService stuBuildService;

    /**
     * 查询宿舍楼列表
     */
    @PreAuthorize("@ss.hasPermi('building:building:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuBuild stuBuild)
    {
        startPage();
        List<StuBuild> list = stuBuildService.selectStuBuildList(stuBuild);
        return getDataTable(list);
    }

    /**
     * 导出宿舍楼列表
     */
    @PreAuthorize("@ss.hasPermi('building:building:export')")
    @Log(title = "宿舍楼", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(StuBuild stuBuild)
    {
        List<StuBuild> list = stuBuildService.selectStuBuildList(stuBuild);
        ExcelUtil<StuBuild> util = new ExcelUtil<StuBuild>(StuBuild.class);
        return util.exportExcel(list, "building");
    }

    /**
     * 获取宿舍楼详细信息
     */
    @PreAuthorize("@ss.hasPermi('building:building:query')")
    @GetMapping(value = "/{buildId}")
    public AjaxResult getInfo(@PathVariable("buildId") String buildId)
    {
        return AjaxResult.success(stuBuildService.selectStuBuildById(buildId));
    }

    /**
     * 新增宿舍楼
     */
    @PreAuthorize("@ss.hasPermi('building:building:add')")
    @Log(title = "宿舍楼", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuBuild stuBuild) {

        StuBuild info = new StuBuild();
        info.setBuildName(stuBuild.getBuildName());
        List<StuBuild> stuBuilds = stuBuildService.selectStuBuildList(info);
        if (stuBuilds.size() > 0) {
            return AjaxResult.error("楼栋名称不可重复");
        }

        return toAjax(stuBuildService.insertStuBuild(stuBuild));
    }

    /**
     * 修改宿舍楼
     */
    @PreAuthorize("@ss.hasPermi('building:building:edit')")
    @Log(title = "宿舍楼", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuBuild stuBuild)
    {
        return toAjax(stuBuildService.updateStuBuild(stuBuild));
    }

    /**
     * 删除宿舍楼
     */
    @PreAuthorize("@ss.hasPermi('building:building:remove')")
    @Log(title = "宿舍楼", businessType = BusinessType.DELETE)
	@DeleteMapping("/{buildIds}")
    public AjaxResult remove(@PathVariable String[] buildIds)
    {
        return toAjax(stuBuildService.deleteStuBuildByIds(buildIds));
    }
}
