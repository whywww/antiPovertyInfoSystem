package edu.scdx.service;

import edu.scdx.dao.LIFMapper;
import edu.scdx.entity.Authority;
import edu.scdx.entity.LowIncomFamilies;
import edu.scdx.entity.TransparentManagement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by lenovo on 2017/7/26.
 */
@Service
public class LIFServiceImpl implements LIFService {
    @Autowired
    private LIFMapper lifMapper;

    public List<LowIncomFamilies> getAll(){
        return lifMapper.getAll();
    }

    public List<LowIncomFamilies> getAll_lif(){
        return lifMapper.getAll_lif();
    }

    public List<Authority> getAllProject(){
        return lifMapper.getAllProject();
    }

    public Integer deleteProjectByID(String project_id){
        return lifMapper.deleteProjectByID(project_id);
    }

    public Authority getProjectDataByID(String project_id){
        return lifMapper.getProjectDataByID(project_id);
    }

    public Integer updateProjectData(Authority authority){
        return lifMapper.updateProjectData(authority);
    }

    public Integer updateSupData(Authority authority){
        return lifMapper.updateSupData(authority);
    }

    public Integer insertProjectData(Authority authority){
        return lifMapper.insertProjectData(authority);
    }
    public Integer insertSupData(Authority authority){
        return lifMapper.insertSupData(authority);
    }

    public LowIncomFamilies getInfoById(Integer lif_id) {
        return lifMapper.selectInfo(lif_id);
    }
    public List<Authority> getDemand(Integer lif_id){
        return lifMapper.getDemand(lif_id);
    }


    public Integer editBasicInfo(LowIncomFamilies lowIncomFamilies) {
        return lifMapper.editInfo(lowIncomFamilies);
    }

    public Integer insertBasicInfo(LowIncomFamilies lowIncomFamilies) {
        return lifMapper.insertInfo(lowIncomFamilies);
    }

    public List<TransparentManagement> getAllTM(){
        return lifMapper.getAllTM();
    }

    public TransparentManagement getLSP(String project_id){
        return lifMapper.getLSP(project_id);
    }

    public TransparentManagement getPlan(String project_id){
        return lifMapper.getPlan(project_id);
    }

    public TransparentManagement getAccount(String project_id){
        return lifMapper.getAccount(project_id);
    }

    public void insertAccount(TransparentManagement transparentManagement){
         lifMapper.insertAccount(transparentManagement);
    }
    public void updateAccount(TransparentManagement transparentManagement){
        lifMapper.updateAccount(transparentManagement);
    }
    public void updateLIF_name(TransparentManagement transparentManagement){
        lifMapper.updateLIF_name(transparentManagement);
    }
    public void updateProject(TransparentManagement transparentManagement){
        lifMapper.updateProject(transparentManagement);
    }
    public void updateSP(TransparentManagement transparentManagement){
        lifMapper.updateSP(transparentManagement);
    }

    @Override
    public List<TransparentManagement> getProjList() {
        return lifMapper.getProjList();
    }
}
