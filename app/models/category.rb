
class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '好きなジャンルを選んで下さい' },
    { id: 2, name: 'ビジネス' },
    { id: 3, name: '自己啓発' },
    { id: 4, name: '実用書' },
    { id: 5, name: '自伝、ノンフィクション' },
    { id: 6, name: 'アート、芸術' },
    { id: 7, name: 'エンタメ' },
    { id: 8, name: 'その他' },
    
  ]
end
