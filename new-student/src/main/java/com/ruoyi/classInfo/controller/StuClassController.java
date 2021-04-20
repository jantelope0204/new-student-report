package com.ruoyi.classInfo.controller;

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
import com.ruoyi.classInfo.domain.StuClass;
import com.ruoyi.classInfo.service.IStuClassService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * classInfoController
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
@RestController
@RequestMapping("/classInfo/classInfo")
public class StuClassController extends BaseController
{
    @Autowired
    private IStuClassService stuClassService;

    /**
     * 查询classInfo列表
     */
    @PreAuthorize("@ss.hasPermi('classInfo:classInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuClass stuClass)
    {
        startPage();
        List<StuClass> list = stuClassService.selectStuClassList(stuClass);
        return getDataTable(list);
    }

    /**
     * 导出classInfo列表
     */
    @PreAuthorize("@ss.hasPermi('classInfo:classInfo:export')")
    @Log(title = "classInfo", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(StuClass stuClass)
    {
        List<StuClass> list = stuClassService.selectStuClassList(stuClass);
        ExcelUtil<StuClass> util = new ExcelUtil<StuClass>(StuClass.class);
        return util.exportExcel(list, "classInfo");
    }

    /**
     * 获取classInfo详细信息
     */
    @PreAuthorize("@ss.hasPermi('classInfo:classInfo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(stuClassService.selectStuClassById(id));
    }

    /**
     * 新增classInfo
     */
    @PreAuthorize("@ss.hasPermi('classInfo:classInfo:add')")
    @Log(title = "classInfo", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuClass stuClass)
    {
        return toAjax(stuClassService.insertStuClass(stuClass));
    }

    /**
     * 修改classInfo
     */
    @PreAuthorize("@ss.hasPermi('classInfo:classInfo:edit')")
    @Log(title = "classInfo", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuClass stuClass)
    {
        return toAjax(stuClassService.updateStuClass(stuClass));
    }

    /**
     * 删除classInfo
     */
    @PreAuthorize("@ss.hasPermi('classInfo:classInfo:remove')")
    @Log(title = "classInfo", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(stuClassService.deleteStuClassByIds(ids));
    }
}
