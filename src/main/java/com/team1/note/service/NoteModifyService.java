package com.team1.note.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.team1.domain.Note;
import com.team1.persistence.NoteMapper;

@Service
public class NoteModifyService {

	@Autowired
	NoteMapper noteMapper;

	public void modify(Note note, BindingResult errors) {

		if (!errors.hasErrors())
			noteMapper.update(note);
	}
}
