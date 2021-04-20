package com.ruoyi.stuRoomInfo.controller;

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
import com.ruoyi.stuRoomInfo.domain.StuRoomInfo;
import com.ruoyi.stuRoomInfo.service.IStuRoomInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生入住信息Controller
 * 
 * @author 张西亚
 * @date 2021-04-20
 */
@RestController
@RequestMapping("/stuRoomInfo/info")
public class StuRoomInfoController extends BaseController
{
    @Autowired
    private IStuRoomInfoService stuRoomInfoService;

    /**
     * 查询学生入住信息列表
     */
    @PreAuthorize("@ss.hasPermi('stuRoomInfo:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuRoomInfo stuRoomInfo)
    {
        startPage();
        List<StuRoomInfo> list = stuRoomInfoService.selectStuRoomInfoList(stuRoomInfo);
        return getDataTable(list);
    }

    /**
     * 导出学生入住信息列表
     */
    @PreAuthorize("@ss.hasPermi('stuRoomInfo:info:export')")
    @Log(title = "学生入住信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(StuRoomInfo stuRoomInfo)
    {
        List<StuRoomInfo> list = stuRoomInfoService.selectStuRoomInfoList(stuRoomInfo);
        ExcelUtil<StuRoomInfo> util = new ExcelUtil<StuRoomInfo>(StuRoomInfo.class);
        return util.exportExcel(list, "info");
    }

    /**
     * 获取学生入住信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('stuRoomInfo:info:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(stuRoomInfoService.selectStuRoomInfoById(id));
    }

    /**
     * 新增学生入住信息
     */
    @PreAuthorize("@ss.hasPermi('stuRoomInfo:info:add')")
    @Log(title = "学生入住信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuRoomInfo stuRoomInfo)
    {
        int i = stuRoomInfoService.insertStuRoomInfo(stuRoomInfo);
        if (i == 0) {
            return AjaxResult.error("当前学生存在宿舍请重新分配");
        }
        return toAjax(i);
    }

    /**
     * 修改学生入住信息
     */
    @PreAuthorize("@ss.hasPermi('stuRoomInfo:info:edit')")
    @Log(title = "学生入住信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuRoomInfo stuRoomInfo)
    {
        return toAjax(stuRoomInfoService.updateStuRoomInfo(stuRoomInfo));
    }

    /**
     * 删除学生入住信息
     */
    @PreAuthorize("@ss.hasPermi('stuRoomInfo:info:remove')")
    @Log(title = "学生入住信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(stuRoomInfoService.deleteStuRoomInfoByIds(ids));
    }
}
