package br.com.erudio.serialization.converter;

import org.springframework.http.MediaType;
import org.springframework.http.converter.json.AbstractJackson2HttpMessageConverter;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.dataformat.yaml.YAMLMapper;

public final class YamlJackson2HttpMessageConverter extends AbstractJackson2HttpMessageConverter{

	public YamlJackson2HttpMessageConverter() {
		super(new YAMLMapper()
				.setSerializationInclusion(JsonInclude.Include.NON_NULL), MediaType.parseMediaType("application/x-yaml"));
	}

}
