import request from '@/utils/request'

// 查询宿舍列表
export function listRoom(query) {
  return request({
    url: '/room/room/list',
    method: 'get',
    params: query
  })
}

// 查询宿舍详细
export function getRoom(roomId) {
  return request({
    url: '/room/room/' + roomId,
    method: 'get'
  })
}

// 新增宿舍
export function addRoom(data) {
  return request({
    url: '/room/room',
    method: 'post',
    data: data
  })
}

// 修改宿舍
export function updateRoom(data) {
  return request({
    url: '/room/room',
    method: 'put',
    data: data
  })
}

// 删除宿舍
export function delRoom(roomId) {
  return request({
    url: '/room/room/' + roomId,
    method: 'delete'
  })
}

// 导出宿舍
export function exportRoom(query) {
  return request({
    url: '/room/room/export',
    method: 'get',
    params: query
  })
}