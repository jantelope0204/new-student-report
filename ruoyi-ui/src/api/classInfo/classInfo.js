import request from '@/utils/request'

// 查询classInfo列表
export function listClassInfo(query) {
  return request({
    url: '/classInfo/classInfo/list',
    method: 'get',
    params: query
  })
}

// 查询classInfo详细
export function getClassInfo(id) {
  return request({
    url: '/classInfo/classInfo/' + id,
    method: 'get'
  })
}

// 新增classInfo
export function addClassInfo(data) {
  return request({
    url: '/classInfo/classInfo',
    method: 'post',
    data: data
  })
}

// 修改classInfo
export function updateClassInfo(data) {
  return request({
    url: '/classInfo/classInfo',
    method: 'put',
    data: data
  })
}

// 删除classInfo
export function delClassInfo(id) {
  return request({
    url: '/classInfo/classInfo/' + id,
    method: 'delete'
  })
}

// 导出classInfo
export function exportClassInfo(query) {
  return request({
    url: '/classInfo/classInfo/export',
    method: 'get',
    params: query
  })
}