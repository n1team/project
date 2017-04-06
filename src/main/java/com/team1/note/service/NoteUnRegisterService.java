package com.team1.note.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team1.persistence.NoteMapper;


@Service
public class NoteUnRegisterService {
	static Log log = LogFactory.getLog(NoteUnRegisterService.class);

	@Autowired
	NoteMapper noteMapper;

	public void unregister(int noteNo) {
		log.info("unregister(" + noteNo + ")");
		noteMapper.delete(noteNo);
	}
}
