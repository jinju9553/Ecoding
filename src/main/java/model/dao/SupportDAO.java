package model.dao;

import java.sql.SQLException;
import java.util.List;

import model.Support;
import model.service.dto.SupportDTO;

public interface SupportDAO {
	public int create(SupportDTO support) throws SQLException;
	public int update(Support support) throws SQLException;
	public int remove(int supportId) throws SQLException;
	public Support findSupport(int supportId) throws SQLException;
	public List<Support> findSupportList() throws SQLException;
	public boolean existingSupport(String supportId) throws SQLException;
	public int countSupporter(int projectId) throws SQLException;
}
