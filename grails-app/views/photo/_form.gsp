<%@ page import="org.caralibroteam.Photo" %>



<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="photo.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" value="${photoInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: '', 'error')} required">
	<label for="photo">
		<g:message code="" default="Foto" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" name="photo" id="photo"/>
</div>

