package com.ruoyi.room.controller;

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
import com.ruoyi.room.domain.StuRoom;
import com.ruoyi.room.service.IStuRoomService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 宿舍Controller
 * 
 * @author ruoyi
 * @date 2021-04-20
 */
@RestController
@RequestMapping("/room/room")
public class StuRoomController extends BaseController
{
    @Autowired
    private IStuRoomService stuRoomService;

    /**
     * 查询宿舍列表
     */
    @PreAuthorize("@ss.hasPermi('room:room:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuRoom stuRoom)
    {
        startPage();
        List<StuRoom> list = stuRoomService.selectStuRoomList(stuRoom);
        return getDataTable(list);
    }

    /**
     * 导出宿舍列表
     */
    @PreAuthorize("@ss.hasPermi('room:room:export')")
    @Log(title = "宿舍", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(StuRoom stuRoom)
    {
        List<StuRoom> list = stuRoomService.selectStuRoomList(stuRoom);
        ExcelUtil<StuRoom> util = new ExcelUtil<StuRoom>(StuRoom.class);
        return util.exportExcel(list, "room");
    }

    /**
     * 获取宿舍详细信息
     */
    @PreAuthorize("@ss.hasPermi('room:room:query')")
    @GetMapping(value = "/{roomId}")
    public AjaxResult getInfo(@PathVariable("roomId") String roomId)
    {
        return AjaxResult.success(stuRoomService.selectStuRoomById(roomId));
    }

    /**
     * 新增宿舍
     */
    @PreAuthorize("@ss.hasPermi('room:room:add')")
    @Log(title = "宿舍", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuRoom stuRoom) {

        StuRoom info = new StuRoom();
        info.setRoomName(stuRoom.getRoomName());
        List<StuRoom> stuRooms = stuRoomService.selectStuRoomList(info);
        if (stuRooms.size() > 0) {
            return AjaxResult.error("当前宿舍名字已存在");
        }
        return toAjax(stuRoomService.insertStuRoom(stuRoom));
    }

    /**
     * 修改宿舍
     */
    @PreAuthorize("@ss.hasPermi('room:room:edit')")
    @Log(title = "宿舍", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuRoom stuRoom)
    {
        return toAjax(stuRoomService.updateStuRoom(stuRoom));
    }

    /**
     * 删除宿舍
     */
    @PreAuthorize("@ss.hasPermi('room:room:remove')")
    @Log(title = "宿舍", businessType = BusinessType.DELETE)
	@DeleteMapping("/{roomIds}")
    public AjaxResult remove(@PathVariable String[] roomIds)
    {
        return toAjax(stuRoomService.deleteStuRoomByIds(roomIds));
    }
}
