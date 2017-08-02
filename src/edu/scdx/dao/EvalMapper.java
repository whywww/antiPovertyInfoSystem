package edu.scdx.dao;
import edu.scdx.entity.Evaluation;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface EvalMapper {
    public List<Evaluation> getAll();
    public Evaluation getEvaluationById(String id);
    public void insertEvaluation(Evaluation evaluation);
}
