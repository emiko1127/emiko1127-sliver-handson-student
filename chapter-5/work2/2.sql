/*
  # ワーク課題5-2-2
  1教科でも30点以下の点数を取った生徒の名前(studentsテーブルのnameカラム)
  を取得するSQLを以下に書いてください。
  ただし、重複は許さないものとします。
  (同じ内容のレコードが2つ以上表示されてはいけない)

  (取得結果イメージ)
  +---------+
  |  name   |
  +---------+
  | 長岡一馬 |
  +---------+
  | 佐竹友香 |
  +---------+
*/

SELECT DISTINCT(name) 
FROM students JOIN exam_results ON students.id = exam_results.student_id 
WHERE score <= 30 ;