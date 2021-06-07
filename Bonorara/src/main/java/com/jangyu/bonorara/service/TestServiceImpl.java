package com.jangyu.bonorara.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jangyu.bonorara.dao.TestDAO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Transactional
@RequiredArgsConstructor
@Slf4j
public class TestServiceImpl implements TestService{
	private TestDAO testDAO;
}
