import request from '@/utils/request'

// 查询学生入住信息列表
export function listInfo(query) {
  return request({
    url: '/stuRoomInfo/info/list',
    method: 'get',
    params: query
  })
}

// 查询学生入住信息详细
export function getInfo(id) {
  return request({
    url: '/stuRoomInfo/info/' + id,
    method: 'get'
  })
}

// 新增学生入住信息
export function addInfo(data) {
  return request({
    url: '/stuRoomInfo/info',
    method: 'post',
    data: data
  })
}

// 修改学生入住信息
export function updateInfo(data) {
  return request({
    url: '/stuRoomInfo/info',
    method: 'put',
    data: data
  })
}

// 删除学生入住信息
export function delInfo(id) {
  return request({
    url: '/stuRoomInfo/info/' + id,
    method: 'delete'
  })
}

// 导出学生入住信息
export function exportInfo(query) {
  return request({
    url: '/stuRoomInfo/info/export',
    method: 'get',
    params: query
  })
}