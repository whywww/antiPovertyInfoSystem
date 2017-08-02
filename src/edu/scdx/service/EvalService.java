package edu.scdx.service;

import edu.scdx.entity.Evaluation;

import java.util.List;

public interface EvalService {
    public List<Evaluation> getAll();
    public Evaluation getEvaluationById(String id);
    public void insertEvaluation(Evaluation evaluation);
}
