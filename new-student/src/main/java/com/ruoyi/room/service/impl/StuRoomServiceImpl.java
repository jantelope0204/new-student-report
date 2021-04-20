package com.ruoyi.room.service.impl;

import java.util.List;

import com.ruoyi.building.domain.StuBuild;
import com.ruoyi.building.mapper.StuBuildMapper;
import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.room.mapper.StuRoomMapper;
import com.ruoyi.room.domain.StuRoom;
import com.ruoyi.room.service.IStuRoomService;

/**
 * 宿舍Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-04-20
 */
@Service
public class StuRoomServiceImpl implements IStuRoomService 
{
    @Autowired
    private StuRoomMapper stuRoomMapper;
    @Autowired
    private StuBuildMapper stuBuildMapper;

    /**
     * 查询宿舍
     * 
     * @param roomId 宿舍ID
     * @return 宿舍
     */
    @Override
    public StuRoom selectStuRoomById(String roomId)
    {
        return stuRoomMapper.selectStuRoomById(roomId);
    }

    /**
     * 查询宿舍列表
     * 
     * @param stuRoom 宿舍
     * @return 宿舍
     */
    @Override
    public List<StuRoom> selectStuRoomList(StuRoom stuRoom)
    {
        List<StuRoom> list = stuRoomMapper.selectStuRoomList(stuRoom);
        list.forEach(item->{
            StuBuild build = stuBuildMapper.selectStuBuildById(item.getBuildId());
            item.setRoomStu(build.getBuildName());
        });
        return list;
    }

    /**
     * 新增宿舍
     * 
     * @param stuRoom 宿舍
     * @return 结果
     */
    @Override
    public int insertStuRoom(StuRoom stuRoom) {
        stuRoom.setRoomId(IdUtils.fastUUID());
        return stuRoomMapper.insertStuRoom(stuRoom);
    }

    /**
     * 修改宿舍
     * 
     * @param stuRoom 宿舍
     * @return 结果
     */
    @Override
    public int updateStuRoom(StuRoom stuRoom)
    {
        return stuRoomMapper.updateStuRoom(stuRoom);
    }

    /**
     * 批量删除宿舍
     * 
     * @param roomIds 需要删除的宿舍ID
     * @return 结果
     */
    @Override
    public int deleteStuRoomByIds(String[] roomIds)
    {
        return stuRoomMapper.deleteStuRoomByIds(roomIds);
    }

    /**
     * 删除宿舍信息
     * 
     * @param roomId 宿舍ID
     * @return 结果
     */
    @Override
    public int deleteStuRoomById(String roomId)
    {
        return stuRoomMapper.deleteStuRoomById(roomId);
    }
}
