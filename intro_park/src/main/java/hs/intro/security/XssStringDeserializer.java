package hs.intro.security;

import java.io.IOException;

import org.apache.commons.text.StringEscapeUtils;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

public class XssStringDeserializer extends JsonDeserializer<String> {

	@Override
	public String deserialize(JsonParser p, DeserializationContext ctxt)
			throws IOException, JsonProcessingException {


		// origin value
		String origin =  p.getValueAsString();

		// do something (ex: xss filtering)
		SerializedString ch = new SerializedString(StringEscapeUtils.escapeHtml4(origin));
		String replaced = ch.toString();




		return replaced;
	}

}