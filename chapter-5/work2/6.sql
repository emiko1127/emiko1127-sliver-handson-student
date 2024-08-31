/*
  # ワーク課題5-2-6
  理科の試験結果が存在しない生徒の名前を取得するSQLを以下に書いてください。

  (取得結果イメージ)
  +---------+
  |  name   |
  +---------+
  | 長岡一馬 |
  +---------+
  | 中本知佳 |
  +---------+
*/

SELECT name 
FROM students 
WHERE NOT EXISTS (
	SELECT 1 
	FROM exam_results 
	WHERE students.id = exam_results.student_id 
	AND exam_results.subject = '理科');