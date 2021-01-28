import request from '@/utils/request'

// 查询studentInfo列表
export function listInfo(query) {
  return request({
    url: '/student/info/list',
    method: 'get',
    params: query
  })
}

// 查询studentInfo详细
export function getInfo(stuId) {
  return request({
    url: '/student/info/' + stuId,
    method: 'get'
  })
}

// 新增studentInfo
export function addInfo(data) {
  return request({
    url: '/student/info',
    method: 'post',
    data: data
  })
}

// 修改studentInfo
export function updateInfo(data) {
  return request({
    url: '/student/info',
    method: 'put',
    data: data
  })
}

// 删除studentInfo
export function delInfo(stuId) {
  return request({
    url: '/student/info/' + stuId,
    method: 'delete'
  })
}

// 导出studentInfo
export function exportInfo(query) {
  return request({
    url: '/student/info/export',
    method: 'get',
    params: query
  })
}
