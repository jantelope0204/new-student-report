package com.ruoyi.classInfo.service.impl;

import java.util.List;

import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.classInfo.mapper.StuClassMapper;
import com.ruoyi.classInfo.domain.StuClass;
import com.ruoyi.classInfo.service.IStuClassService;

/**
 * classInfoService业务层处理
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
@Service
public class StuClassServiceImpl implements IStuClassService 
{
    @Autowired
    private StuClassMapper stuClassMapper;

    /**
     * 查询classInfo
     * 
     * @param id classInfoID
     * @return classInfo
     */
    @Override
    public StuClass selectStuClassById(String id)
    {
        return stuClassMapper.selectStuClassById(id);
    }

    /**
     * 查询classInfo列表
     * 
     * @param stuClass classInfo
     * @return classInfo
     */
    @Override
    public List<StuClass> selectStuClassList(StuClass stuClass)
    {
        return stuClassMapper.selectStuClassList(stuClass);
    }

    /**
     * 新增classInfo
     * 
     * @param stuClass classInfo
     * @return 结果
     */
    @Override
    public int insertStuClass(StuClass stuClass)
    {
        stuClass.setId(IdUtils.fastUUID());
        return stuClassMapper.insertStuClass(stuClass);
    }

    /**
     * 修改classInfo
     * 
     * @param stuClass classInfo
     * @return 结果
     */
    @Override
    public int updateStuClass(StuClass stuClass)
    {
        return stuClassMapper.updateStuClass(stuClass);
    }

    /**
     * 批量删除classInfo
     * 
     * @param ids 需要删除的classInfoID
     * @return 结果
     */
    @Override
    public int deleteStuClassByIds(String[] ids)
    {
        return stuClassMapper.deleteStuClassByIds(ids);
    }

    /**
     * 删除classInfo信息
     * 
     * @param id classInfoID
     * @return 结果
     */
    @Override
    public int deleteStuClassById(String id)
    {
        return stuClassMapper.deleteStuClassById(id);
    }
}
