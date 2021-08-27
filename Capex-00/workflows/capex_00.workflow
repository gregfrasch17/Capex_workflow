{
	"contents": {
		"d10bd76b-b455-4c41-88f3-6649f8aa571e": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "capex.capex_00",
			"subject": "CAPEX Approval for '${context.Title}'",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "Country",
				"label": "Country",
				"type": "string",
				"value": "${context.Investment.Country}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "TotalCost",
				"label": "Total Cost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}],
			"name": "capex_00",
			"documentation": "Capital Expenditure Approval",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Capex Request"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "End (Approval)"
				},
				"13f8d6e0-3896-41fd-8e4e-a37e716c18b0": {
					"name": "End (Rejection)"
				},
				"8a90bf65-7763-4e0d-a04c-653d7bac8ca7": {
					"name": "End (Rejection)"
				}
			},
			"activities": {
				"653bf7a0-dbab-42a7-86b9-4f5a49f25261": {
					"name": "Prepare Data"
				},
				"63767b08-2e76-4ece-8d16-72a41047c18f": {
					"name": "Retrieve Approval Steps"
				},
				"e19e272d-e54e-421f-b058-2b7615a72533": {
					"name": "Approval Required? "
				},
				"7ed8a6d8-b2fe-4c3c-bda2-6fe508ad6316": {
					"name": "Approval Task (Local Manager)"
				},
				"95be7736-b822-4ab9-8c86-99f4bf7a12c5": {
					"name": "HandleApproval (Local Manager)"
				},
				"342b75cb-29e2-4243-a966-52353119a576": {
					"name": "Approval Result?"
				},
				"7d54b1a8-00df-4d79-8abd-0de322201064": {
					"name": "join"
				},
				"13585166-3922-4c1c-a097-0e924859226b": {
					"name": "Rework Task"
				},
				"571fd09e-5ed7-43dd-9bdd-92024186f9e7": {
					"name": "Approval Required"
				},
				"950b8dc5-d286-4839-afc2-a3054db89dd2": {
					"name": "Approval Task (Central Manager)"
				},
				"d851d7f9-4070-47a9-9caf-5ea600e42fe9": {
					"name": "Handle Approval (Central Manager)"
				},
				"f8882fbf-e99a-424e-8e18-030423b0b6ac": {
					"name": "Approval Result"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"00b9e0e7-35a6-4b43-9786-6cf1e7c3f774": {
					"name": "SequenceFlow2"
				},
				"1a5e22ff-b891-4937-8300-1a62f1d6e21b": {
					"name": "SequenceFlow3"
				},
				"1c9b7de4-3f22-43b0-a7b5-695f445cc572": {
					"name": "SequenceFlow5"
				},
				"4aa5bafb-b4a7-401b-8bc7-ee19a8dee38d": {
					"name": "SequenceFlow6"
				},
				"1e9d8c0c-30a9-4b62-8b23-73595dde4b3c": {
					"name": "Approve"
				},
				"581dfc99-e3e5-491f-848e-b70d4d69ce06": {
					"name": "SequenceFlow8"
				},
				"78777fb9-3841-4ab2-b089-6963ceb531e6": {
					"name": "No"
				},
				"63bbab30-3d9d-488d-8dc4-fea604774a53": {
					"name": "Yes"
				},
				"74e90f32-e39d-4007-b7cb-493f89180f6f": {
					"name": "Reject"
				},
				"b0193750-2b2c-4d8b-8bf6-0d79d537a2d2": {
					"name": "Rework"
				},
				"0ddf9c35-feb9-444c-9601-ac267a16f22b": {
					"name": "SequenceFlow14"
				},
				"2b2e5f65-579e-4acf-908c-1ec9e29ee32d": {
					"name": "yes"
				},
				"c4785071-3365-487e-be1a-102a74da47a2": {
					"name": "SequenceFlow16"
				},
				"8c9f6cae-c79e-4f01-b704-a6d70069878c": {
					"name": "SequenceFlow17"
				},
				"516d3449-4671-4bb4-b0cb-f1ffaa431b68": {
					"name": "Approve"
				},
				"0b8565fc-0dd9-490c-a507-16a9999201ec": {
					"name": "Reject"
				},
				"e8bce58d-e52e-4adf-bc18-77e25e0b1432": {
					"name": "no"
				},
				"160731bd-5906-476a-b9a0-308958390191": {
					"name": "Rework"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Capex Request",
			"sampleContextRefs": {
				"26de7462-54cc-464e-a2e5-9e4322bd769a": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End (Approval)",
			"eventDefinitions": {
				"2ff13d28-23b1-43eb-bb64-d5d4a529ba02": {}
			}
		},
		"13f8d6e0-3896-41fd-8e4e-a37e716c18b0": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"557962e4-0b06-4029-ba29-b5cc25e94ba0": {}
			}
		},
		"8a90bf65-7763-4e0d-a04c-653d7bac8ca7": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End (Rejection)",
			"eventDefinitions": {
				"b6e4a114-ca78-4b66-a31f-19eec93846db": {}
			}
		},
		"653bf7a0-dbab-42a7-86b9-4f5a49f25261": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/PrepareData.js",
			"id": "scripttask1",
			"name": "Prepare Data"
		},
		"63767b08-2e76-4ece-8d16-72a41047c18f": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesPayload}",
			"responseVariable": "${context.approvalStepsResult}",
			"id": "servicetask1",
			"name": "Retrieve Approval Steps"
		},
		"e19e272d-e54e-421f-b058-2b7615a72533": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Required? ",
			"default": "78777fb9-3841-4ab2-b089-6963ceb531e6"
		},
		"7ed8a6d8-b2fe-4c3c-bda2-6fe508ad6316": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Local Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.lm_userid},${context.Requestor.UserId}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"customAttributes": [{
				"id": "roi",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "capex",
				"label": "Capex",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "totalCost",
				"label": "Total Cost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "country",
				"label": "Country",
				"type": "string",
				"value": "${context.Investment.Country}"
			}, {
				"id": "email",
				"label": "Email",
				"type": "string",
				"value": "${context.Requester.Email}"
			}, {
				"id": "userId",
				"label": "userId",
				"type": "string",
				"value": "${context.Requester.UserId}"
			}, {
				"id": "name",
				"label": "Name",
				"type": "string",
				"value": "${context.Requester.Name}"
			}],
			"id": "usertask1",
			"name": "Approval Task (Local Manager)"
		},
		"95be7736-b822-4ab9-8c86-99f4bf7a12c5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/HandleApprovalLocalManager.js",
			"id": "scripttask2",
			"name": "HandleApproval (Local Manager)"
		},
		"342b75cb-29e2-4243-a966-52353119a576": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Result?",
			"default": "74e90f32-e39d-4007-b7cb-493f89180f6f"
		},
		"7d54b1a8-00df-4d79-8abd-0de322201064": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "join"
		},
		"13585166-3922-4c1c-a097-0e924859226b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework for '${context.Title}'",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requestor.UserId}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "Rework Task",
			"dueDateRef": "bdf2b19a-d9fd-4994-9842-b9272ad55ba3"
		},
		"571fd09e-5ed7-43dd-9bdd-92024186f9e7": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Approval Required",
			"default": "e8bce58d-e52e-4adf-bc18-77e25e0b1432"
		},
		"950b8dc5-d286-4839-afc2-a3054db89dd2": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for '${context.Title}' in your role as Central Manager",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approvalStepsResult.Result[0].Approvers.cm_userid}, ${context.Requestor.UserId}",
			"formReference": "/forms/capex_00/CapexApproval_00.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "capexapproval_00"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask3",
			"name": "Approval Task (Central Manager)"
		},
		"d851d7f9-4070-47a9-9caf-5ea600e42fe9": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/capex_00/HandleApprovalCentralManager.js",
			"id": "scripttask3",
			"name": "Handle Approval (Central Manager)"
		},
		"f8882fbf-e99a-424e-8e18-030423b0b6ac": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Approval Result",
			"default": "0b8565fc-0dd9-490c-a507-16a9999201ec"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "653bf7a0-dbab-42a7-86b9-4f5a49f25261"
		},
		"00b9e0e7-35a6-4b43-9786-6cf1e7c3f774": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "653bf7a0-dbab-42a7-86b9-4f5a49f25261",
			"targetRef": "63767b08-2e76-4ece-8d16-72a41047c18f"
		},
		"1a5e22ff-b891-4937-8300-1a62f1d6e21b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "63767b08-2e76-4ece-8d16-72a41047c18f",
			"targetRef": "e19e272d-e54e-421f-b058-2b7615a72533"
		},
		"1c9b7de4-3f22-43b0-a7b5-695f445cc572": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "7ed8a6d8-b2fe-4c3c-bda2-6fe508ad6316",
			"targetRef": "95be7736-b822-4ab9-8c86-99f4bf7a12c5"
		},
		"4aa5bafb-b4a7-401b-8bc7-ee19a8dee38d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "95be7736-b822-4ab9-8c86-99f4bf7a12c5",
			"targetRef": "342b75cb-29e2-4243-a966-52353119a576"
		},
		"1e9d8c0c-30a9-4b62-8b23-73595dde4b3c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision ==\"approve\"}",
			"id": "sequenceflow7",
			"name": "Approve",
			"sourceRef": "342b75cb-29e2-4243-a966-52353119a576",
			"targetRef": "7d54b1a8-00df-4d79-8abd-0de322201064"
		},
		"581dfc99-e3e5-491f-848e-b70d4d69ce06": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "7d54b1a8-00df-4d79-8abd-0de322201064",
			"targetRef": "571fd09e-5ed7-43dd-9bdd-92024186f9e7"
		},
		"78777fb9-3841-4ab2-b089-6963ceb531e6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "No",
			"sourceRef": "e19e272d-e54e-421f-b058-2b7615a72533",
			"targetRef": "7d54b1a8-00df-4d79-8abd-0de322201064"
		},
		"63bbab30-3d9d-488d-8dc4-fea604774a53": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.lm_required}",
			"id": "sequenceflow10",
			"name": "Yes",
			"sourceRef": "e19e272d-e54e-421f-b058-2b7615a72533",
			"targetRef": "7ed8a6d8-b2fe-4c3c-bda2-6fe508ad6316"
		},
		"74e90f32-e39d-4007-b7cb-493f89180f6f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "Reject",
			"sourceRef": "342b75cb-29e2-4243-a966-52353119a576",
			"targetRef": "13f8d6e0-3896-41fd-8e4e-a37e716c18b0"
		},
		"b0193750-2b2c-4d8b-8bf6-0d79d537a2d2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow13",
			"name": "Rework",
			"sourceRef": "342b75cb-29e2-4243-a966-52353119a576",
			"targetRef": "13585166-3922-4c1c-a097-0e924859226b"
		},
		"0ddf9c35-feb9-444c-9601-ac267a16f22b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "13585166-3922-4c1c-a097-0e924859226b",
			"targetRef": "653bf7a0-dbab-42a7-86b9-4f5a49f25261"
		},
		"2b2e5f65-579e-4acf-908c-1ec9e29ee32d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalStepsResult.Result[0].Approvers.cm_required}",
			"id": "sequenceflow15",
			"name": "yes",
			"sourceRef": "571fd09e-5ed7-43dd-9bdd-92024186f9e7",
			"targetRef": "950b8dc5-d286-4839-afc2-a3054db89dd2"
		},
		"c4785071-3365-487e-be1a-102a74da47a2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "950b8dc5-d286-4839-afc2-a3054db89dd2",
			"targetRef": "d851d7f9-4070-47a9-9caf-5ea600e42fe9"
		},
		"8c9f6cae-c79e-4f01-b704-a6d70069878c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "d851d7f9-4070-47a9-9caf-5ea600e42fe9",
			"targetRef": "f8882fbf-e99a-424e-8e18-030423b0b6ac"
		},
		"516d3449-4671-4bb4-b0cb-f1ffaa431b68": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"approve\"}",
			"id": "sequenceflow18",
			"name": "Approve",
			"sourceRef": "f8882fbf-e99a-424e-8e18-030423b0b6ac",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"0b8565fc-0dd9-490c-a507-16a9999201ec": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "Reject",
			"sourceRef": "f8882fbf-e99a-424e-8e18-030423b0b6ac",
			"targetRef": "8a90bf65-7763-4e0d-a04c-653d7bac8ca7"
		},
		"e8bce58d-e52e-4adf-bc18-77e25e0b1432": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "no",
			"sourceRef": "571fd09e-5ed7-43dd-9bdd-92024186f9e7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"160731bd-5906-476a-b9a0-308958390191": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.decision == \"rework\"}",
			"id": "sequenceflow21",
			"name": "Rework",
			"sourceRef": "f8882fbf-e99a-424e-8e18-030423b0b6ac",
			"targetRef": "13585166-3922-4c1c-a097-0e924859226b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"e8f6ffd5-256f-424d-8cba-6223f069447b": {},
				"3310a391-d811-4bae-b380-0416ca3815b5": {},
				"6b1b0b68-8211-449f-b090-5b17af9bd87a": {},
				"83cf1d6c-8983-46fd-8f5f-513a937d753a": {},
				"0fffa686-0dc9-4689-a7b3-7bf45aa3c184": {},
				"fb2daa3d-a123-4ced-8510-6912f532e4bf": {},
				"ab8d5eee-24ca-4943-9d7e-a9bdc61c0b35": {},
				"a5cb0b09-6f70-4b85-a11d-e89cab180f44": {},
				"bc681001-ba40-4440-82c5-4b4d4c98ae72": {},
				"ced679fa-831b-470a-be12-d8d700753628": {},
				"df9fd2a1-a1b7-4f94-afb2-853f487294aa": {},
				"690dbf70-cbda-4921-9c84-8e6a9cf122ea": {},
				"f231416c-aaa6-437f-a7bb-db86067b8775": {},
				"638b498e-b246-4adf-8ff3-1a89d16f9869": {},
				"bb82b0cf-02c0-43d8-9575-e09d9e252d40": {},
				"74ff2b25-b977-4da5-a046-7857dfe1ce57": {},
				"d057f59b-a1c0-49d4-98c4-69d182f51957": {},
				"6b928a42-3262-4556-9c2c-1ecf733dfc8f": {},
				"9b13aecb-8c32-4a18-b5e5-9ccc674e0b37": {},
				"aeee0574-a1cb-4ef1-897e-74f2b7045db8": {},
				"9e5d3a06-80b4-43e3-a6e5-d0fc431c130a": {},
				"ac6093f6-3faa-45e0-b67c-f8cea303867c": {},
				"e22b421a-16dc-43ac-b97a-4260a2923cd7": {},
				"7246963e-7eb9-443d-94f3-300bd3500805": {},
				"b178c821-5f2c-4e6c-b6c6-1e751dd763e0": {},
				"4448bbea-4807-45dd-8767-77478b98f47c": {},
				"31e6c21f-9f76-479f-b420-85003c1037db": {},
				"13ddf11f-4e34-4567-ba6b-5a0893d44e6f": {},
				"daa32799-e5b5-434f-803f-6f22365b2cc7": {},
				"d40a1868-1be8-430c-ac14-8ec6169700cb": {},
				"1cd8314a-c8fa-485c-bd57-22750d3528ca": {},
				"9d4b15ce-8de7-41ad-84fb-66820b41e2cf": {}
			}
		},
		"26de7462-54cc-464e-a2e5-9e4322bd769a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/capex_00/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"2ff13d28-23b1-43eb-bb64-d5d4a529ba02": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition3"
		},
		"557962e4-0b06-4029-ba29-b5cc25e94ba0": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"b6e4a114-ca78-4b66-a31f-19eec93846db": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1659,
			"y": 99,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "e8f6ffd5-256f-424d-8cba-6223f069447b",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"e8f6ffd5-256f-424d-8cba-6223f069447b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "653bf7a0-dbab-42a7-86b9-4f5a49f25261"
		},
		"3310a391-d811-4bae-b380-0416ca3815b5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,116.9375 414.37073643296924,116.9375",
			"sourceSymbol": "e8f6ffd5-256f-424d-8cba-6223f069447b",
			"targetSymbol": "6b1b0b68-8211-449f-b090-5b17af9bd87a",
			"object": "00b9e0e7-35a6-4b43-9786-6cf1e7c3f774"
		},
		"6b1b0b68-8211-449f-b090-5b17af9bd87a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 364.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "63767b08-2e76-4ece-8d16-72a41047c18f"
		},
		"83cf1d6c-8983-46fd-8f5f-513a937d753a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "414.37073643296924,117.21875 527.9353682164847,117.21875",
			"sourceSymbol": "6b1b0b68-8211-449f-b090-5b17af9bd87a",
			"targetSymbol": "0fffa686-0dc9-4689-a7b3-7bf45aa3c184",
			"object": "1a5e22ff-b891-4937-8300-1a62f1d6e21b"
		},
		"0fffa686-0dc9-4689-a7b3-7bf45aa3c184": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 506.9353682164847,
			"y": 96.3125,
			"object": "e19e272d-e54e-421f-b058-2b7615a72533"
		},
		"fb2daa3d-a123-4ced-8510-6912f532e4bf": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 630.9676841082423,
			"y": 87.40625,
			"width": 100,
			"height": 60,
			"object": "7ed8a6d8-b2fe-4c3c-bda2-6fe508ad6316"
		},
		"ab8d5eee-24ca-4943-9d7e-a9bdc61c0b35": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "680.9676841082423,117.4296875 840.73388671875,117.4296875",
			"sourceSymbol": "fb2daa3d-a123-4ced-8510-6912f532e4bf",
			"targetSymbol": "a5cb0b09-6f70-4b85-a11d-e89cab180f44",
			"object": "1c9b7de4-3f22-43b0-a7b5-695f445cc572"
		},
		"a5cb0b09-6f70-4b85-a11d-e89cab180f44": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 790.73388671875,
			"y": 87.453125,
			"width": 100,
			"height": 60,
			"object": "95be7736-b822-4ab9-8c86-99f4bf7a12c5"
		},
		"bc681001-ba40-4440-82c5-4b4d4c98ae72": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "840.73388671875,117.46484375 977.616943359375,117.46484375",
			"sourceSymbol": "a5cb0b09-6f70-4b85-a11d-e89cab180f44",
			"targetSymbol": "ced679fa-831b-470a-be12-d8d700753628",
			"object": "4aa5bafb-b4a7-401b-8bc7-ee19a8dee38d"
		},
		"ced679fa-831b-470a-be12-d8d700753628": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 956.616943359375,
			"y": 96.4765625,
			"object": "342b75cb-29e2-4243-a966-52353119a576"
		},
		"df9fd2a1-a1b7-4f94-afb2-853f487294aa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "998.116943359375,117.4794921875 1079.9627075195312,117.4794921875",
			"sourceSymbol": "ced679fa-831b-470a-be12-d8d700753628",
			"targetSymbol": "690dbf70-cbda-4921-9c84-8e6a9cf122ea",
			"object": "1e9d8c0c-30a9-4b62-8b23-73595dde4b3c"
		},
		"690dbf70-cbda-4921-9c84-8e6a9cf122ea": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1059.3084716796875,
			"y": 96.48828125,
			"object": "7d54b1a8-00df-4d79-8abd-0de322201064"
		},
		"f231416c-aaa6-437f-a7bb-db86067b8775": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1080.3084716796875,117.2412109375 1180.1542358398438,117.2412109375",
			"sourceSymbol": "690dbf70-cbda-4921-9c84-8e6a9cf122ea",
			"targetSymbol": "9e5d3a06-80b4-43e3-a6e5-d0fc431c130a",
			"object": "581dfc99-e3e5-491f-848e-b70d4d69ce06"
		},
		"638b498e-b246-4adf-8ff3-1a89d16f9869": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "527.9353682164847,96.8125 527.9353637695312,-90 1080.3084716796875,-90 1080.3084716796875,96.98828125",
			"sourceSymbol": "0fffa686-0dc9-4689-a7b3-7bf45aa3c184",
			"targetSymbol": "690dbf70-cbda-4921-9c84-8e6a9cf122ea",
			"object": "78777fb9-3841-4ab2-b089-6963ceb531e6"
		},
		"bb82b0cf-02c0-43d8-9575-e09d9e252d40": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "548.4353682164847,117.3359375 631.4676841082423,117.3359375",
			"sourceSymbol": "0fffa686-0dc9-4689-a7b3-7bf45aa3c184",
			"targetSymbol": "fb2daa3d-a123-4ced-8510-6912f532e4bf",
			"object": "63bbab30-3d9d-488d-8dc4-fea604774a53"
		},
		"74ff2b25-b977-4da5-a046-7857dfe1ce57": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 960.5,
			"y": -32.5,
			"width": 35,
			"height": 35,
			"object": "13f8d6e0-3896-41fd-8e4e-a37e716c18b0"
		},
		"d057f59b-a1c0-49d4-98c4-69d182f51957": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "977.7366485595703,96.9765625 977.7366485595703,-15",
			"sourceSymbol": "ced679fa-831b-470a-be12-d8d700753628",
			"targetSymbol": "74ff2b25-b977-4da5-a046-7857dfe1ce57",
			"object": "74e90f32-e39d-4007-b7cb-493f89180f6f"
		},
		"6b928a42-3262-4556-9c2c-1ecf733dfc8f": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 186,
			"y": 193,
			"width": 100,
			"height": 60,
			"object": "13585166-3922-4c1c-a097-0e924859226b"
		},
		"9b13aecb-8c32-4a18-b5e5-9ccc674e0b37": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "977.616943359375,137.9765625 977.616943359375,223 236,223",
			"sourceSymbol": "ced679fa-831b-470a-be12-d8d700753628",
			"targetSymbol": "6b928a42-3262-4556-9c2c-1ecf733dfc8f",
			"object": "b0193750-2b2c-4d8b-8bf6-0d79d537a2d2"
		},
		"aeee0574-a1cb-4ef1-897e-74f2b7045db8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.12073643296924,223 236.12073643296924,116.75",
			"sourceSymbol": "6b928a42-3262-4556-9c2c-1ecf733dfc8f",
			"targetSymbol": "e8f6ffd5-256f-424d-8cba-6223f069447b",
			"object": "0ddf9c35-feb9-444c-9601-ac267a16f22b"
		},
		"9e5d3a06-80b4-43e3-a6e5-d0fc431c130a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1159.1542358398438,
			"y": 95.994140625,
			"object": "571fd09e-5ed7-43dd-9bdd-92024186f9e7"
		},
		"ac6093f6-3faa-45e0-b67c-f8cea303867c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1180.1542358398438,116.87060546875 1300.0771179199219,116.87060546875",
			"sourceSymbol": "9e5d3a06-80b4-43e3-a6e5-d0fc431c130a",
			"targetSymbol": "e22b421a-16dc-43ac-b97a-4260a2923cd7",
			"object": "2b2e5f65-579e-4acf-908c-1ec9e29ee32d"
		},
		"e22b421a-16dc-43ac-b97a-4260a2923cd7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1250.0771179199219,
			"y": 86.7470703125,
			"width": 100,
			"height": 60,
			"object": "950b8dc5-d286-4839-afc2-a3054db89dd2"
		},
		"7246963e-7eb9-443d-94f3-300bd3500805": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1300.0771179199219,116.685302734375 1479.288558959961,116.685302734375",
			"sourceSymbol": "e22b421a-16dc-43ac-b97a-4260a2923cd7",
			"targetSymbol": "b178c821-5f2c-4e6c-b6c6-1e751dd763e0",
			"object": "c4785071-3365-487e-be1a-102a74da47a2"
		},
		"b178c821-5f2c-4e6c-b6c6-1e751dd763e0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1429.288558959961,
			"y": 86.62353515625,
			"width": 100,
			"height": 60,
			"object": "d851d7f9-4070-47a9-9caf-5ea600e42fe9"
		},
		"4448bbea-4807-45dd-8767-77478b98f47c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1479.288558959961,116.5926513671875 1568.8942794799805,116.5926513671875",
			"sourceSymbol": "b178c821-5f2c-4e6c-b6c6-1e751dd763e0",
			"targetSymbol": "31e6c21f-9f76-479f-b420-85003c1037db",
			"object": "8c9f6cae-c79e-4f01-b704-a6d70069878c"
		},
		"31e6c21f-9f76-479f-b420-85003c1037db": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1547.8942794799805,
			"y": 95.561767578125,
			"object": "f8882fbf-e99a-424e-8e18-030423b0b6ac"
		},
		"13ddf11f-4e34-4567-ba6b-5a0893d44e6f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1569.1971397399902,116.5308837890625 1676.1971397399902,116.5308837890625",
			"sourceSymbol": "31e6c21f-9f76-479f-b420-85003c1037db",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "516d3449-4671-4bb4-b0cb-f1ffaa431b68"
		},
		"daa32799-e5b5-434f-803f-6f22365b2cc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1551.8942794799805,
			"y": -31.938232421875,
			"width": 35,
			"height": 35,
			"object": "8a90bf65-7763-4e0d-a04c-653d7bac8ca7"
		},
		"d40a1868-1be8-430c-ac14-8ec6169700cb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1569.1442794799805,116.561767578125 1569.1442794799805,-14.438232421875",
			"sourceSymbol": "31e6c21f-9f76-479f-b420-85003c1037db",
			"targetSymbol": "daa32799-e5b5-434f-803f-6f22365b2cc7",
			"object": "0b8565fc-0dd9-490c-a507-16a9999201ec"
		},
		"1cd8314a-c8fa-485c-bd57-22750d3528ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1180.1542358398438,96.494140625 1180.154296875,-91 1676.5,-91 1676.5,99.5",
			"sourceSymbol": "9e5d3a06-80b4-43e3-a6e5-d0fc431c130a",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "e8bce58d-e52e-4adf-bc18-77e25e0b1432"
		},
		"9d4b15ce-8de7-41ad-84fb-66820b41e2cf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1568.8942794799805,137.061767578125 1568.894287109375,241 283.5,241",
			"sourceSymbol": "31e6c21f-9f76-479f-b420-85003c1037db",
			"targetSymbol": "6b928a42-3262-4556-9c2c-1ecf733dfc8f",
			"object": "160731bd-5906-476a-b9a0-308958390191"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 3,
			"timereventdefinition": 1,
			"sequenceflow": 21,
			"startevent": 1,
			"endevent": 3,
			"usertask": 3,
			"servicetask": 1,
			"scripttask": 3,
			"exclusivegateway": 5
		},
		"bdf2b19a-d9fd-4994-9842-b9272ad55ba3": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P2D",
			"id": "timereventdefinition1"
		}
	}
}