package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.Authority;
import edu.scdx.entity.LowIncomFamilies;
import edu.scdx.entity.TransparentManagement;

/**
 * Created by lenovo on 2017/7/26.
 */
public interface LIFService {
    public List<LowIncomFamilies> getAll();
    public List<LowIncomFamilies> getAll_lif();
    public List<Authority> getAllProject();
    public Integer deleteProjectByID(String project_id);
    public Authority getProjectDataByID(String project_id);
    public Integer updateProjectData(Authority authority);
    public Integer updateSupData(Authority authority);
    public Integer insertProjectData(Authority authority);
    public Integer insertSupData(Authority authority);
    public LowIncomFamilies getInfoById(Integer lif_id);
    public List<Authority> getDemand(Integer lif_id);

    public Integer insertBasicInfo(LowIncomFamilies lowIncomFamilies);
    public Integer editBasicInfo(LowIncomFamilies lowIncomFamilies);

    public List<TransparentManagement> getAllTM();
    public TransparentManagement getLSP(String project_id);
    public TransparentManagement getPlan(String project_id);
    public TransparentManagement getAccount(String project_id);
    public void insertAccount(TransparentManagement transparentManagement);
    public void updateAccount(TransparentManagement transparentManagement);
    public void updateLIF_name(TransparentManagement transparentManagement);
    public void updateProject(TransparentManagement transparentManagement);
    public void updateSP(TransparentManagement transparentManagement);

    List<TransparentManagement> getProjList();
}
