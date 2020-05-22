package co.grandcircus.lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;




@Repository
public class GradeDao {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public List<Grade> findAll() {
		String sql = "SELECT * FROM Grades";
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Grade.class));
	}
	
	public Grade findById(Long id) {
		String sql = "SELECT * FROM Grades WHERE id = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Grade.class), id);
	}
	public void removeById(Long id) {
		String sql = "DELETE FROM Grades WHERE id = ?";
		jdbc.update(sql, id);
	}

	public void create(Grade grade) {
		String sql = "INSERT INTO Grades (name, type, score, total) VALUES (?, ?, ?, ?)";
		jdbc.update(sql, grade.getName(), grade.getType(), grade.getScore(), grade.getTotal());
	}
}
