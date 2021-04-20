package com.ruoyi.classInfo.service;

import java.util.List;
import com.ruoyi.classInfo.domain.StuClass;

/**
 * classInfoService接口
 * 
 * @author zhangxiya
 * @date 2021-04-20
 */
public interface IStuClassService 
{
    /**
     * 查询classInfo
     * 
     * @param id classInfoID
     * @return classInfo
     */
    public StuClass selectStuClassById(String id);

    /**
     * 查询classInfo列表
     * 
     * @param stuClass classInfo
     * @return classInfo集合
     */
    public List<StuClass> selectStuClassList(StuClass stuClass);

    /**
     * 新增classInfo
     * 
     * @param stuClass classInfo
     * @return 结果
     */
    public int insertStuClass(StuClass stuClass);

    /**
     * 修改classInfo
     * 
     * @param stuClass classInfo
     * @return 结果
     */
    public int updateStuClass(StuClass stuClass);

    /**
     * 批量删除classInfo
     * 
     * @param ids 需要删除的classInfoID
     * @return 结果
     */
    public int deleteStuClassByIds(String[] ids);

    /**
     * 删除classInfo信息
     * 
     * @param id classInfoID
     * @return 结果
     */
    public int deleteStuClassById(String id);
}
