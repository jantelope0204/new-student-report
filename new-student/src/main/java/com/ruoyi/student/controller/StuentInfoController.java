package com.ruoyi.student.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.student.domain.StuentInfo;
import com.ruoyi.student.service.IStuentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * studentInfoController
 * 
 * @author 西亚
 * @date 2021-01-28
 */
@RestController
@RequestMapping("/student/info")
public class StuentInfoController extends BaseController
{
    @Autowired
    private IStuentInfoService stuentInfoService;

    /**
     * 查询studentInfo列表
     */
    @PreAuthorize("@ss.hasPermi('student:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuentInfo stuentInfo)
    {
        startPage();
        List<StuentInfo> list = stuentInfoService.selectStuentInfoList(stuentInfo);
        return getDataTable(list);
    }

    /**
     * 导出studentInfo列表
     */
    @PreAuthorize("@ss.hasPermi('student:info:export')")
    @Log(title = "studentInfo", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(StuentInfo stuentInfo)
    {
        List<StuentInfo> list = stuentInfoService.selectStuentInfoList(stuentInfo);
        ExcelUtil<StuentInfo> util = new ExcelUtil<StuentInfo>(StuentInfo.class);
        return util.exportExcel(list, "info");
    }

    /**
     * 获取studentInfo详细信息
     */
    @PreAuthorize("@ss.hasPermi('student:info:query')")
    @GetMapping(value = "/{stuId}")
    public AjaxResult getInfo(@PathVariable("stuId") String stuId)
    {
        return AjaxResult.success(stuentInfoService.selectStuentInfoById(stuId));
    }

    /**
     * 新增studentInfo
     */
    @PreAuthorize("@ss.hasPermi('student:info:add')")
    @Log(title = "studentInfo", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuentInfo stuentInfo)
    {
        return toAjax(stuentInfoService.insertStuentInfo(stuentInfo));
    }

    /**
     * 修改studentInfo
     */
    @PreAuthorize("@ss.hasPermi('student:info:edit')")
    @Log(title = "studentInfo", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuentInfo stuentInfo)
    {
        return toAjax(stuentInfoService.updateStuentInfo(stuentInfo));
    }

    /**
     * 删除studentInfo
     */
    @PreAuthorize("@ss.hasPermi('student:info:remove')")
    @Log(title = "studentInfo", businessType = BusinessType.DELETE)
	@DeleteMapping("/{stuIds}")
    public AjaxResult remove(@PathVariable String[] stuIds)
    {
        return toAjax(stuentInfoService.deleteStuentInfoByIds(stuIds));
    }
}
