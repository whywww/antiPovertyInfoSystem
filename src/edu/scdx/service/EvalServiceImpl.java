package edu.scdx.service;

import edu.scdx.dao.EvalMapper;
import edu.scdx.entity.Evaluation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EvalServiceImpl implements  EvalService {
    @Autowired
    private EvalMapper evalMapper;

    @Override
    public List<Evaluation> getAll() {
        return  evalMapper.getAll();
    }

    @Override
    public Evaluation getEvaluationById(String id) {
        return evalMapper.getEvaluationById(id);
    }

    @Override
    public void insertEvaluation(Evaluation evaluation) {
        evalMapper.insertEvaluation(evaluation);
    }
}
