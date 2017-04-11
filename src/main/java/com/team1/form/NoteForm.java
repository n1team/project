package com.team1.form;


import com.team1.domain.Note;

public class NoteForm extends Note {
	public void setNote(Note note) {
		super.setNoteContent(note.getNoteContent());
		super.setNoteDate(note.getNoteDate());
		super.setNoteId(note.getNoteId());
		super.setNoteNo(note.getNoteNo());
		super.setNoteTitle(note.getNoteTitle());
	}
	@Override
	public String getNoteTitle() {
		// TODO Auto-generated method stub
		return super.getNoteTitle();
	}

	@Override
	public Note setNoteTitle(String value) {
		// TODO Auto-generated method stub
		return super.setNoteTitle(value);
	}
	
	@Override
	public String getNoteContent() {
		// TODO Auto-generated method stub
		return super.getNoteContent();
	}

	@Override
	public Note setNoteContent(String value) {
		// TODO Auto-generated method stub
		return super.setNoteContent(value);
	}
	
	
	
	
//	@NotNull
//	@Override
//	public String getNoteId() {
//		// TODO Auto-generated method stub
//		return super.getNoteId();
//	}
//
//	@Override
//	public Note setNoteId(String value) {
//		// TODO Auto-generated method stub
//		return super.setNoteId(value);
//	}
//	@NotNull
//	@Override
//	public String getNoteTitle() {
//		// TODO Auto-generated method stub
//		return super.getNoteTitle();
//	}
//
//	@Override
//	public Note setNoteTitle(String value) {
//		// TODO Auto-generated method stub
//		return super.setNoteTitle(value);
//	}


}
