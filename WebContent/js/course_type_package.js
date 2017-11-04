
$(function(){	

			$('#upload_info_m').ssi_uploader({url:'#',maxFileSize:15,allowed:['jpg','gif','png'],maxNumberOfFiles:3});
			$('#upload_info_s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,allowed:['jpg','gif','png'],maxNumberOfFiles:3});
			
			$('#upload_detail_0m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_0s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_1m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_1s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_2m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_2s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_3m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_3s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_4m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_4s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_5m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_5s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_6m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_6s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_7m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_7s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_8m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_8s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_9m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_9s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
			$('#upload_detail_10m').ssi_uploader({url:'#',maxFileSize:15,maxNumberOfFiles:3,allowed:['any']});
			$('#upload_detail_10s').ssi_uploader({url:'#',maxFileSize:15,dropZone:false,maxNumberOfFiles:3,allowed:['any']});
	
	$('#tba_date0').click(function(){
		$('#course_date_0').val('');
		if($('#tba_date0').is(':checked'))
			{
				$('#course_date_0').attr('disabled','disabled');
			}else
				{
					$('#course_date_0').removeAttr('disabled');
				}
	});
	$('#tba_date1').click(function(){
		$('#course_date_1').val('');
		if($('#tba_date1').is(':checked'))
			{
				$('#course_date_1').attr('disabled','disabled');
			}else
				{
					$('#course_date_1').removeAttr('disabled');
				}
	});
	$('#tba_date2').click(function(){
		$('#course_date_2').val('');
		if($('#tba_date2').is(':checked'))
			{
				$('#course_date_2').attr('disabled','disabled');
			}else
				{
					$('#course_date_2').removeAttr('disabled');
				}
	});
	$('#tba_date3').click(function(){
		$('#course_date_3').val('');
		if($('#tba_date3').is(':checked'))
			{
				$('#course_date_3').attr('disabled','disabled');
			}else
				{
					$('#course_date_3').removeAttr('disabled');
				}
	});
	$('#tba_date4').click(function(){
		$('#course_date_4').val('');
		if($('#tba_date4').is(':checked'))
			{
				$('#course_date_4').attr('disabled','disabled');
			}else
				{
					$('#course_date_4').removeAttr('disabled');
				}
	});
	$('#tba_date5').click(function(){
		$('#course_date_5').val('');
		if($('#tba_date5').is(':checked'))
			{
				$('#course_date_5').attr('disabled','disabled');
			}else
				{
					$('#course_date_5').removeAttr('disabled');
				}
	});
	$('#tba_date6').click(function(){
		$('#course_date_6').val('');
		if($('#tba_date6').is(':checked'))
			{
				$('#course_date_6').attr('disabled','disabled');
			}else
				{
					$('#course_date_06').removeAttr('disabled');
				}
	});
	$('#tba_date7').click(function(){
		$('#course_date_7').val('');
		if($('#tba_date7').is(':checked'))
			{
				$('#course_date_7').attr('disabled','disabled');
			}else
				{
					$('#course_date_7').removeAttr('disabled');
				}
	});
	$('#tba_date8').click(function(){
		$('#course_date_8').val('');
		if($('#tba_date8').is(':checked'))
			{
				$('#course_date_8').attr('disabled','disabled');
			}else
				{
					$('#course_date_8').removeAttr('disabled');
				}
	});
	$('#tba_date9').click(function(){
		$('#course_date_9').val('');
		if($('#tba_date9').is(':checked'))
			{
				$('#course_date_9').attr('disabled','disabled');
			}else
				{
					$('#course_date_9').removeAttr('disabled');
				}
	});
	$('#tba_date10').click(function(){
		$('#course_date_10').val('');
		if($('#tba_date10').is(':checked'))
			{
				$('#course_date_10').attr('disabled','disabled');
			}else
				{
					$('#course_date_10').removeAttr('disabled');
				}
	});
	
	$('#tba_time0').click(function(){
		$('#course_time_0').val('');
		if($('#tba_time0').is(':checked'))
			{
				$('#course_time_0').attr('disabled','disabled');
			}else
				{
					$('#course_time_0').removeAttr('disabled');
				}
	});
	$('#tba_time1').click(function(){
		$('#course_time_1').val('');
		if($('#tba_time1').is(':checked'))
			{
				$('#course_time_1').attr('disabled','disabled');
			}else
				{
					$('#course_time_1').removeAttr('disabled');
				}
	});
	$('#tba_time2').click(function(){
		$('#course_time_2').val('');
		if($('#tba_time2').is(':checked'))
			{
				$('#course_time_2').attr('disabled','disabled');
			}else
				{
					$('#course_time_2').removeAttr('disabled');
				}
	});
	$('#tba_time3').click(function(){
		$('#course_time_3').val('');
		if($('#tba_time3').is(':checked'))
			{
				$('#course_time_3').attr('disabled','disabled');
			}else
				{
					$('#course_time_3').removeAttr('disabled');
				}
	});
	$('#tba_time4').click(function(){
		$('#course_time_4').val('');
		if($('#tba_time4').is(':checked'))
			{
				$('#course_time_4').attr('disabled','disabled');
			}else
				{
					$('#course_time_4').removeAttr('disabled');
				}
	});
	$('#tba_time5').click(function(){
		$('#course_time_5').val('');
		if($('#tba_time5').is(':checked'))
			{
				$('#course_time_5').attr('disabled','disabled');
			}else
				{
					$('#course_time_5').removeAttr('disabled');
				}
	});
	$('#tba_time6').click(function(){
		$('#course_time_6').val('');
		if($('#tba_time6').is(':checked'))
			{
				$('#course_time_6').attr('disabled','disabled');
			}else
				{
					$('#course_time_06').removeAttr('disabled');
				}
	});
	$('#tba_time7').click(function(){
		$('#course_time_7').val('');
		if($('#tba_time7').is(':checked'))
			{
				$('#course_time_7').attr('disabled','disabled');
			}else
				{
					$('#course_time_7').removeAttr('disabled');
				}
	});
	$('#tba_time8').click(function(){
		$('#course_time_8').val('');
		if($('#tba_time8').is(':checked'))
			{
				$('#course_time_8').attr('disabled','disabled');
			}else
				{
					$('#course_time_8').removeAttr('disabled');
				}
	});
	$('#tba_time9').click(function(){
		$('#course_time_9').val('');
		if($('#tba_time9').is(':checked'))
			{
				$('#course_time_9').attr('disabled','disabled');
			}else
				{
					$('#course_time_9').removeAttr('disabled');
				}
	});
	$('#tba_time10').click(function(){
		$('#course_time_10').val('');
		if($('#tba_time10').is(':checked'))
			{
				$('#course_time_10').attr('disabled','disabled');
			}else
				{
					$('#course_time_10').removeAttr('disabled');
				}
	});
	
	$('#tba_length0').click(function(){
		$('#course_length_0').val('');
		if($('#tba_length0').is(':checked'))
			{
				$('#course_length_0').attr('disabled','disabled');
			}else
				{
					$('#course_length_0').removeAttr('disabled');
				}
	});
	$('#tba_length1').click(function(){
		$('#course_length_1').val('');
		if($('#tba_length1').is(':checked'))
			{
				$('#course_length_1').attr('disabled','disabled');
			}else
				{
					$('#course_length_1').removeAttr('disabled');
				}
	});
	$('#tba_length2').click(function(){
		$('#course_length_2').val('');
		if($('#tba_length2').is(':checked'))
			{
				$('#course_length_2').attr('disabled','disabled');
			}else
				{
					$('#course_length_2').removeAttr('disabled');
				}
	});
	$('#tba_length3').click(function(){
		$('#course_length_3').val('');
		if($('#tba_length3').is(':checked'))
			{
				$('#course_length_3').attr('disabled','disabled');
			}else
				{
					$('#course_length_3').removeAttr('disabled');
				}
	});
	$('#tba_length4').click(function(){
		$('#course_length_4').val('');
		if($('#tba_length4').is(':checked'))
			{
				$('#course_length_4').attr('disabled','disabled');
			}else
				{
					$('#course_length_4').removeAttr('disabled');
				}
	});
	$('#tba_length5').click(function(){
		$('#course_length_5').val('');
		if($('#tba_length5').is(':checked'))
			{
				$('#course_length_5').attr('disabled','disabled');
			}else
				{
					$('#course_length_5').removeAttr('disabled');
				}
	});
	$('#tba_length6').click(function(){
		$('#course_length_6').val('');
		if($('#tba_length6').is(':checked'))
			{
				$('#course_length_6').attr('disabled','disabled');
			}else
				{
					$('#course_length_06').removeAttr('disabled');
				}
	});
	$('#tba_length7').click(function(){
		$('#course_length_7').val('');
		if($('#tba_length7').is(':checked'))
			{
				$('#course_length_7').attr('disabled','disabled');
			}else
				{
					$('#course_length_7').removeAttr('disabled');
				}
	});
	$('#tba_length8').click(function(){
		$('#course_length_8').val('');
		if($('#tba_length8').is(':checked'))
			{
				$('#course_length_8').attr('disabled','disabled');
			}else
				{
					$('#course_length_8').removeAttr('disabled');
				}
	});
	$('#tba_length9').click(function(){
		$('#course_length_9').val('');
		if($('#tba_length9').is(':checked'))
			{
				$('#course_length_9').attr('disabled','disabled');
			}else
				{
					$('#course_length_9').removeAttr('disabled');
				}
	});
	$('#tba_length10').click(function(){
		$('#course_length_10').val('');
		if($('#tba_length10').is(':checked'))
			{
				$('#course_length_10').attr('disabled','disabled');
			}else
				{
					$('#course_length_10').removeAttr('disabled');
				}
	});
	
	$('#tba_loc0').click(function(){
		$('#course_loc_0').val('');
		if($('#tba_loc0').is(':checked'))
			{
				$('#course_loc_0').attr('disabled','disabled');
			}else
				{
					$('#course_loc_0').removeAttr('disabled');
				}
	});
	$('#tba_loc1').click(function(){
		$('#course_loc_1').val('');
		if($('#tba_loc1').is(':checked'))
			{
				$('#course_loc_1').attr('disabled','disabled');
			}else
				{
					$('#course_loc_1').removeAttr('disabled');
				}
	});
	$('#tba_loc2').click(function(){
		$('#course_loc_2').val('');
		if($('#tba_loc2').is(':checked'))
			{
				$('#course_loc_2').attr('disabled','disabled');
			}else
				{
					$('#course_loc_2').removeAttr('disabled');
				}
	});
	$('#tba_loc3').click(function(){
		$('#course_loc_3').val('');
		if($('#tba_loc3').is(':checked'))
			{
				$('#course_loc_3').attr('disabled','disabled');
			}else
				{
					$('#course_loc_3').removeAttr('disabled');
				}
	});
	$('#tba_loc4').click(function(){
		$('#course_loc_4').val('');
		if($('#tba_loc4').is(':checked'))
			{
				$('#course_loc_4').attr('disabled','disabled');
			}else
				{
					$('#course_loc_4').removeAttr('disabled');
				}
	});
	$('#tba_loc5').click(function(){
		$('#course_loc_5').val('');
		if($('#tba_loc5').is(':checked'))
			{
				$('#course_loc_5').attr('disabled','disabled');
			}else
				{
					$('#course_loc_5').removeAttr('disabled');
				}
	});
	$('#tba_loc6').click(function(){
		$('#course_loc_6').val('');
		if($('#tba_loc6').is(':checked'))
			{
				$('#course_loc_6').attr('disabled','disabled');
			}else
				{
					$('#course_loc_06').removeAttr('disabled');
				}
	});
	$('#tba_loc7').click(function(){
		$('#course_loc_7').val('');
		if($('#tba_loc7').is(':checked'))
			{
				$('#course_loc_7').attr('disabled','disabled');
			}else
				{
					$('#course_loc_7').removeAttr('disabled');
				}
	});
	$('#tba_loc8').click(function(){
		$('#course_loc_8').val('');
		if($('#tba_loc8').is(':checked'))
			{
				$('#course_loc_8').attr('disabled','disabled');
			}else
				{
					$('#course_loc_8').removeAttr('disabled');
				}
	});
	$('#tba_loc9').click(function(){
		$('#course_loc_9').val('');
		if($('#tba_loc9').is(':checked'))
			{
				$('#course_loc_9').attr('disabled','disabled');
			}else
				{
					$('#course_loc_9').removeAttr('disabled');
				}
	});
	$('#tba_loc10').click(function(){
		$('#course_loc_10').val('');
		if($('#tba_loc10').is(':checked'))
			{
				$('#course_loc_10').attr('disabled','disabled');
			}else
				{
					$('#course_loc_10').removeAttr('disabled');
				}
	});
	
	
	$('#type-package').click(function(){
		//alert('a');
			$('#control_check_1').hide();
			$('#control_edit_1').hide();
			$('#control_submit_a').hide();
			
			$('#control_reset_0').click();
			$('#control_reset_1').click();
			$('#control_reset_2').click();
			$('#control_reset_3').click();
			$('#control_reset_4').click();
			$('#control_reset_5').click();
			$('#control_reset_6').click();
			$('#control_reset_7').click();
			$('#control_reset_8').click();
			$('#control_reset_9').click();
			$('#control_reset_10').click();
			
			$('#control_submit').hide();
			$('#course_detail_0').hide();
			$('#course_detail_1').hide();
			$('#course_detail_2').hide();
			$('#course_detail_3').hide();
			$('#course_detail_4').hide();
			$('#course_detail_5').hide();
			$('#course_detail_6').hide();
			$('#course_detail_7').hide();
			$('#course_detail_8').hide();
			$('#course_detail_9').hide();
			$('#course_detail_10').hide();
			$('#control_edit').hide();
			$('#control_check').hide();
			
			$('#control_edit').attr('disabled','disabled');
			$('#control_check').removeAttr('disabled');
			$('#control_submit').attr('disabled','disabled');
		
		$('#control_submit').hide();
		$('#put_number').show();
		$('#change_number').show();
		$('#aa').show();
		
		$('#number_of_course').show();
		
		$('#put_number').click(function(){
		
			$('#course_number').attr('disabled','disabled');
			
			
			var number_s = $('#course_number').val();
			var number = parseInt(number_s);
			
			
			
			if(number === 2)
				{
					$('#control_edit').show();
					$('#control_check').show();
					$('#control_submit').show();
					$('#course_detail_1').show();
					$('#course_detail_2').show();
					
					$('#control_check').click(function(){
						if(check1() && check2())
							{
								$('#control_submit').removeAttr('disabled');
								disable1();disable2();
								$('#control_edit').removeAttr('disabled');
								$('#control_check').attr('disabled','disabled');
							}else
								{
									alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
								}
					});
					
					$('#control_edit').click(function(){
						enable1();enable2();
						$('#control_submit').attr('disabled','disabled');
						$('#control_check').removeAttr('disabled');
						$('#control_edit').attr('disabled','disabled');
					});
					
				}else
					if(number === 3)
						{
							$('#control_edit').show();
							$('#control_check').show();
							$('#control_submit').show();
							$('#course_detail_1').show();
							$('#course_detail_2').show();
							$('#course_detail_3').show();
							
							$('#control_check').click(function(){
								if(check1() && check2() && check3())
								{
									$('#control_submit').removeAttr('disabled');
									disable1();disable2();disable3();
									$('#control_edit').removeAttr('disabled');
									$('#control_check').attr('disabled','disabled');
								}else
									{
										alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
									}
							});
					
							$('#control_edit').click(function(){
								enable1();enable2();enable3();
								$('#control_submit').attr('disabled','disabled');
								$('#control_check').removeAttr('disabled');
								$('#control_edit').attr('disabled','disabled');
							});	
							}else
								if(number === 4)
								{
									$('#control_edit').show();
									$('#control_check').show();
									$('#control_submit').show();
									$('#course_detail_1').show();
									$('#course_detail_2').show();
									$('#course_detail_3').show();
									$('#course_detail_4').show();
									
									$('#control_check').click(function(){
										if(check1() && check2() && check3() && check4())
										{
											$('#control_submit').removeAttr('disabled');
											disable1();disable2();disable3();disable4();
											$('#control_edit').removeAttr('disabled');
											$('#control_check').attr('disabled','disabled');
										}else
											{
												alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
											}
									});
					
								$('#control_edit').click(function(){
									enable1();enable2();enable3();enable4();
									$('#control_submit').attr('disabled','disabled');
									$('#control_check').removeAttr('disabled');
									$('#control_edit').attr('disabled','disabled');
								});
								}else
									if(number === 5)
										{
											$('#control_edit').show();
											$('#control_check').show();
											$('#control_submit').show();
											$('#course_detail_1').show();
											$('#course_detail_2').show();
											$('#course_detail_3').show();
											$('#course_detail_4').show();
											$('#course_detail_5').show();
											
											$('#control_check').click(function(){
												if(check1() && check2() && check3() && check4() && check5())
												{
													$('#control_submit').removeAttr('disabled');
													disable1();disable2();disable3();disable4();disable5();
													$('#control_edit').removeAttr('disabled');
													$('#control_check').attr('disabled','disabled');
												}else
												{
													alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
												}
											});
					
											$('#control_edit').click(function(){
												enable1();enable2();enable3();enable4();enable5();
												$('#control_submit').attr('disabled','disabled');
												$('#control_check').removeAttr('disabled');
												$('#control_edit').attr('disabled','disabled');
											});
										}else
											if(number === 6)
												{
													$('#control_edit').show();
													$('#control_check').show();
													$('#control_submit').show();
													$('#course_detail_1').show();
													$('#course_detail_2').show();
													$('#course_detail_3').show();
													$('#course_detail_4').show();
													$('#course_detail_5').show();
													$('#course_detail_6').show();
													
													$('#control_check').click(function(){
														if(check1() && check2() && check3() && check4() && check5() && check6())
														{
															$('#control_submit').removeAttr('disabled');
															disable1();disable2();disable3();disable4();disable5();disable6();
															$('#control_edit').removeAttr('disabled');
															$('#control_check').attr('disabled','disabled');
														}else
														{
															alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
														}
													});
					
													$('#control_edit').click(function(){
														enable1();enable2();enable3();enable4();enable5();enable6();
														$('#control_submit').attr('disabled','disabled');
														$('#control_check').removeAttr('disabled');
														$('#control_edit').attr('disabled','disabled');
													});
												}else
													if(number === 7)
														{
															$('#control_edit').show();
															$('#control_check').show();
															$('#control_submit').show();
															$('#course_detail_1').show();
															$('#course_detail_2').show();
															$('#course_detail_3').show();
															$('#course_detail_4').show();
															$('#course_detail_5').show();
															$('#course_detail_6').show();
															$('#course_detail_7').show();
															
															$('#control_check').click(function(){
																if(check1() && check2() && check3() && check4() && check5() && check6() && check7())
																{
																	$('#control_submit').removeAttr('disabled');					disable1();disable2();disable3();disable4();disable5();disable6();disable7();
																	$('#control_edit').removeAttr('disabled');
																	$('#control_check').attr('disabled','disabled');
																}else
																{
																	alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
																}
													});
					
															$('#control_edit').click(function(){
																enable1();enable2();enable3();enable4();enable5();enable6();enable7();
																$('#control_submit').attr('disabled','disabled');
																$('#control_check').removeAttr('disabled');
																$('#control_edit').attr('disabled','disabled');
															});
														}else
															if(number === 8)
																{
																	$('#control_edit').show();
																	$('#control_check').show();
																	$('#control_submit').show();
																	$('#course_detail_1').show();
																	$('#course_detail_2').show();
																	$('#course_detail_3').show();
																	$('#course_detail_4').show();
																	$('#course_detail_5').show();
																	$('#course_detail_6').show();
																	$('#course_detail_7').show();
																	$('#course_detail_8').show();
																	
																	$('#control_check').click(function(){
																		if(check1() && check2() && check3() && check4() && check5() && check6() && check7() && check8())
																		{
																			$('#control_submit').removeAttr('disabled');					disable1();disable2();disable3();disable4();disable5();disable6();disable7();disable8();
																			$('#control_edit').removeAttr('disabled');
																			$('#control_check').attr('disabled','disabled');
																		}else
																		{
																			alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
																		}
																	});
					
																	$('#control_edit').click(function(){
																		enable1();enable2();enable3();enable4();enable5();enable6();enable7();enable8();
																		$('#control_submit').attr('disabled','disabled');
																		$('#control_check').removeAttr('disabled');
																		$('#control_edit').attr('disabled','disabled');
																	});
																}else
																	if(number === 9)
																		{
																			$('#control_edit').show();
																			$('#control_check').show();
																			$('#control_submit').show();
																			$('#course_detail_1').show();
																			$('#course_detail_2').show();
																			$('#course_detail_3').show();
																			$('#course_detail_4').show();
																			$('#course_detail_5').show();
																			$('#course_detail_6').show();
																			$('#course_detail_7').show();
																			$('#course_detail_8').show();
																			$('#course_detail_9').show();
																			
																			$('#control_check').click(function(){
																				if(check1() && check2() && check3() && check4() && check5() && check6() && check7() && check8() && check9())
																				{
																					$('#control_submit').removeAttr('disabled');					disable1();disable2();disable3();disable4();disable5();disable6();disable7();disable8();disable9();
																					$('#control_edit').removeAttr('disabled');
																					$('#control_check').attr('disabled','disabled');
																				}else
																				{
																					alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
																				}
																			});
					
																			$('#control_edit').click(function(){
																				enable1();enable2();enable3();enable4();enable5();enable6();enable7();enable8();enable9();
																				$('#control_submit').attr('disabled','disabled');
																				$('#control_check').removeAttr('disabled');
																				$('#control_edit').attr('disabled','disabled');
																			});
																		}else
																			if(number === 10)
																			{
																				$('#control_edit').show();
																				$('#control_check').show();
																				$('#control_submit').show();
																				$('#course_detail_1').show();
																				$('#course_detail_2').show();
																				$('#course_detail_3').show();
																				$('#course_detail_4').show();
																				$('#course_detail_5').show();
																				$('#course_detail_6').show();
																				$('#course_detail_7').show();
																				$('#course_detail_8').show();
																				$('#course_detail_9').show();
																				$('#course_detail_10').show();
																				
																				$('#control_check').click(function(){
																					if(check1() && check2() && check3() && check4() && check5() && check6() && check7() && check8() && check9() && check10())
																					{
																						$('#control_submit').removeAttr('disabled');					disable1();disable2();disable3();disable4();disable5();disable6();disable7();disable8();disable9();disable10();
																						$('#control_edit').removeAttr('disabled');
																						$('#control_check').attr('disabled','disabled');
																					}else
																					{
																						alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
																					}
																				});
					
																				$('#control_edit').click(function(){
																				enable1();enable2();enable3();enable4();enable5();enable6();enable7();enable8();enable9();enable10();
																					$('#control_submit').attr('disabled','disabled');
																					$('#control_check').removeAttr('disabled');
																					$('#control_edit').attr('disabled','disabled');
																				});
																			}else
																				{
																					$('#course_number').removeAttr('disabled');
																					alert('多次课程发布至少两节最多十节');
																				}
		
		});
	
		$('#change_number').click(function(){
		
			$('#course_number').removeAttr('disabled');
			
			$('#control_edit').attr('disabled','disabled');
			$('#control_check').removeAttr('disabled');
			$('#control_submit').attr('disabled','disabled');
			
			$('#control_edit').hide();
			$('#control_check').hide();
			$('#control_submit').hide();
			
			enable1();enable2();enable3();enable4();enable5();
			enable6();enable7();enable8();enable9();enable10();
			
		
			$('#course_detail_1').hide();
			$('#course_detail_2').hide();
			$('#course_detail_3').hide();
			$('#course_detail_4').hide();
			$('#course_detail_5').hide();
			$('#course_detail_6').hide();
			$('#course_detail_7').hide();
			$('#course_detail_8').hide();
			$('#course_detail_9').hide();
			$('#course_detail_10').hide();
			
			$('#control_reset_0').click();
			$('#control_reset_1').click();
			$('#control_reset_2').click();
			$('#control_reset_3').click();
			$('#control_reset_4').click();
			$('#control_reset_5').click();
			$('#control_reset_6').click();
			$('#control_reset_7').click();
			$('#control_reset_8').click();
			$('#control_reset_9').click();
			$('#control_reset_10').click();
		
		});
		
		$('#control_submit').click(function(){
			var numbers = $('#course_number').val();
			
			var numbersn = parseInt(numbers);
			
			if(numbersn === 2)
				{
					$('#control_submit_1').click();					
					$('#control_submit_2').click();
					$('#control_check').hide();
					$('#control_edit').hide();
					$('#control_submit').hide();
					$('#submit_info').show();
					$('#aa').hide();
					$('#type').hide();$('#submit_info').click();
					
				}else
					if(numbersn === 3)
						{
							$('#control_submit_1').click();					
							$('#control_submit_2').click();
							$('#control_submit_3').click();
							$('#control_check').hide();
							$('#control_edit').hide();
							$('#control_submit').hide();
							$('#submit_info').show();
							$('#aa').hide();
							$('#type').hide();$('#submit_info').click();
						}else
							if(numbersn === 4)
								{
									$('#control_submit_1').click();
									$('#control_submit_2').click();
									$('#control_submit_3').click();
									$('#control_submit_4').click();
									$('#control_check').hide();
									$('#control_edit').hide();
									$('#control_submit').hide();
									$('#submit_info').show();
									$('#aa').hide();
									$('#type').hide();$('#submit_info').click();
								}else
									if(numbersn === 5)
										{
											$('#control_submit_1').click();
											$('#control_submit_2').click();
											$('#control_submit_3').click();
											$('#control_submit_4').click();
											$('#control_submit_5').click();
											$('#control_check').hide();
											$('#control_edit').hide();
											$('#control_submit').hide();
											$('#submit_info').show();
											$('#aa').hide();
											$('#type').hide();$('#submit_info').click();
										}else
											if(numbersn === 6)
												{
													$('#control_submit_1').click();
													$('#control_submit_2').click();
													$('#control_submit_3').click();
													$('#control_submit_4').click();
													$('#control_submit_5').click();
													$('#control_submit_6').click();
													$('#control_check').hide();
													$('#control_edit').hide();
													$('#control_submit').hide();
													$('#submit_info').show();
													$('#aa').hide();
													$('#type').hide();$('#submit_info').click();
												}else
													if(numbersn === 7)
														{
															$('#control_submit_1').click();
															$('#control_submit_2').click();
															$('#control_submit_3').click();
															$('#control_submit_4').click();
															$('#control_submit_5').click();
															$('#control_submit_6').click();
															$('#control_submit_7').click();
															$('#control_check').hide();
															$('#control_edit').hide();
															$('#control_submit').hide();
															$('#submit_info').show();
															$('#aa').hide();
															$('#type').hide();$('#submit_info').click();
														}else
															if(numbersn === 8)
																{
																	$('#control_submit_1').click();
																	$('#control_submit_2').click();
																	$('#control_submit_3').click();
																	$('#control_submit_4').click();
																	$('#control_submit_5').click();
																	$('#control_submit_6').click();
																	$('#control_submit_7').click();
																	$('#control_submit_8').click();
																	$('#control_check').hide();
																	$('#control_edit').hide();
																	$('#control_submit').hide();
																	$('#submit_info').show();
																	$('#aa').hide();
																	$('#type').hide();$('#submit_info').click();
																}else
																	if(numbersn === 9)
																		{
																			$('#control_submit_1').click();
																			$('#control_submit_2').click();
																			$('#control_submit_3').click();
																			$('#control_submit_4').click();
																			$('#control_submit_5').click();
																			$('#control_submit_6').click();
																			$('#control_submit_7').click();
																			$('#control_submit_8').click();
																			$('#control_submit_9').click();
																			$('#control_check').hide();
																			$('#control_edit').hide();
																			$('#control_submit').hide();
																			$('#submit_info').show();
																			$('#aa').hide();
																			$('#type').hide();$('#submit_info').click();
																		}else
																			{
																				$('#control_submit_1').click();
																				$('#control_submit_2').click();
																				$('#control_submit_3').click();
																				$('#control_submit_4').click();
																				$('#control_submit_5').click();
																				$('#control_submit_6').click();
																				$('#control_submit_7').click();
																				$('#control_submit_8').click();
																				$('#control_submit_9').click();
																				$('#control_submit_10').click();
																				$('#control_check').hide();
																				$('#control_edit').hide();
																				$('#control_submit').hide();
																				$('#submit_info').show();
																				$('#aa').hide();
																				$('#type').hide();$('#submit_info').click();
																			}
		});
		
		$('#course_number').removeAttr('disabled');
				
	});
	
	$('#type-once').click(function(){
		//alert('a');
		
		$('#control_submit_a').show();
		$('#control_edit_1').show();
		$('#control_check_1').show();
		
			$('#control_reset_0').click();
			$('#control_reset_1').click();
			$('#control_reset_2').click();
			$('#control_reset_3').click();
			$('#control_reset_4').click();
			$('#control_reset_5').click();
			$('#control_reset_6').click();
			$('#control_reset_7').click();
			$('#control_reset_8').click();
			$('#control_reset_9').click();
			$('#control_reset_10').click();
		
		$('#put_number').hide();
		$('#change_number').hide();
		$('#aa').hide();
		
		$('#course_number').attr('disabled','disabled');
		
		$('#course_detail_0').show();
		$('#control_submit').hide();
		$('#number_of_course').hide();
		
			$('#course_detail_1').hide();
			$('#course_detail_2').hide();
			$('#course_detail_3').hide();
			$('#course_detail_4').hide();
			$('#course_detail_5').hide();
			$('#course_detail_6').hide();
			$('#course_detail_7').hide();
			$('#course_detail_8').hide();
			$('#course_detail_9').hide();
			$('#course_detail_10').hide();
		
		$('#control_check').hide();
		$('#control_edit').hide();
		
		$('#control_edit_1').attr('disabled','disabled');
		$('#control_check_1').removeAttr('disabled');
		$('#control_submit_a').attr('disabled','disabled');
		
		$('#control_check_1').click(function(){
						if(check0())
							{
								$('#control_submit_a').removeAttr('disabled');
								disable0();
								$('#control_edit_1').removeAttr('disabled');
								$('#control_check_1').attr('disabled','disabled');
							}else
								{
									alert('请确认已填写所有信息且信息有效（如：邮箱是否合法，电话号码是否为11位，课程时长是否短于30分钟或长于600分钟）');
								}
					});
					
					$('#control_edit_1').click(function(){
						enable0();
						$('#control_submit_a').attr('disabled','disabled');
						$('#control_check_1').removeAttr('disabled');
						$('#control_edit_1').attr('disabled','disabled');
					});
		
		
		$('#control_submit_a').click(function(){
			$('#control_submit_0').click();	
			$('#submit_info').click();
			$('#control_check_1').hide();
			$('#control_edit_1').hide();
			$('#control_submit_a').hide();
			$('#aa').hide();
			$('#type').hide();
		});

			
		});
	
	
});

function hideForm_0(){
	$('#course_detail_0').hide();
	alert('第一次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_1(){
	$('#course_detail_1').hide();
	alert('第一次课程已提交，您可在我的课程中修改课程信息');
	//$('#type').hide();
}
function hideForm_2(){
	$('#course_detail_2').hide();
	alert('第二次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_3(){
	$('#course_detail_3').hide();
	alert('第三次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_4(){
	$('#course_detail_4').hide();
	alert('第四次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_5(){
	$('#course_detail_5').hide();
	alert('第五次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_6(){
	$('#course_detail_6').hide();
	alert('第六次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_7(){
	$('#course_detail_7').hide();
	alert('第七次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_8(){
	$('#course_detail_8').hide();
	alert('第八次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_9(){
	$('#course_detail_9').hide();
	alert('第九次课程已提交，您可在我的课程中修改课程信息');
}
function hideForm_10(){
	$('#course_detail_10').hide();
	alert('第十次课程已提交，您可在我的课程中修改课程信息');
}

function check0(){
	var date = $('#course_date_0').val();
	var time = $('#course_time_0').val();
	var loc = $('#course_loc_0').val();
	var des = $('#course_des_0').val();	
	var len = $('#course_length_0').val();
	
	
	if((date===''&&!ischecked_date0())||(time===''&&!ischecked_time0())||(loc===''&&!ischecked_loc0())||des===''||((len>600||len<30)&&!ischecked_length0())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check1(){
	var date = $('#course_date_1').val();
	var time = $('#course_time_1').val();
	var loc = $('#course_loc_1').val();
	var des = $('#course_des_1').val();
	var len = $('#course_length_1').val();
	if((date===''&&!ischecked_date1())||(time===''&&!ischecked_time1())||(loc===''&&!ischecked_loc1())||des===''||((len>600||len<30)&&!ischecked_length1())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check2(){
	var date = $('#course_date_2').val();
	var time = $('#course_time_2').val();
	var loc = $('#course_loc_2').val();
	var des = $('#course_des_2').val();
	var len = $('#course_length_2').val();
	if((date===''&&!ischecked_date2())||(time===''&&!ischecked_time2())||(loc===''&&!ischecked_loc2())||des===''||((len>600||len<30)&&!ischecked_length2())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check3(){
	var date = $('#course_date_3').val();
	var time = $('#course_time_3').val();
	var loc = $('#course_loc_3').val();
	var des = $('#course_des_3').val();
	var len = $('#course_length_3').val();
	if((date===''&&!ischecked_date3())||(time===''&&!ischecked_time3())||(loc===''&&!ischecked_loc3())||des===''||((len>600||len<30)&&!ischecked_length3())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check4(){
	var date = $('#course_date_4').val();
	var time = $('#course_time_4').val();
	var loc = $('#course_loc_4').val();
	var des = $('#course_des_4').val();
	var len = $('#course_length_4').val();
	if((date===''&&!ischecked_date4())||(time===''&&!ischecked_time4())||(loc===''&&!ischecked_loc4())||des===''||((len>600||len<30)&&!ischecked_length4())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check5(){
	var date = $('#course_date_5').val();
	var time = $('#course_time_5').val();
	var loc = $('#course_loc_5').val();
	var des = $('#course_des_5').val();
	var len = $('#course_length_5').val();
	if((date===''&&!ischecked_date5())||(time===''&&!ischecked_time5())||(loc===''&&!ischecked_loc5())||des===''||((len>600||len<30)&&!ischecked_length5())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check6(){
	var date = $('#course_date_6').val();
	var time = $('#course_time_6').val();
	var loc = $('#course_loc_6').val();
	var des = $('#course_des_6').val();
	var len = $('#course_length_6').val();
	if((date===''&&!ischecked_date6())||(time===''&&!ischecked_time6())||(loc===''&&!ischecked_loc6())||des===''||((len>600||len<30)&&!ischecked_length6())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check7(){
	var date = $('#course_date_7').val();
	var time = $('#course_time_7').val();
	var loc = $('#course_loc_7').val();
	var des = $('#course_des_7').val();
	var len = $('#course_length_7').val();
	if((date===''&&!ischecked_date7())||(time===''&&!ischecked_time7())||(loc===''&&!ischecked_loc7())||des===''||((len>600||len<30)&&!ischecked_length7())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check8(){
	var date = $('#course_date_8').val();
	var time = $('#course_time_8').val();
	var loc = $('#course_loc_8').val();
	var des = $('#course_des_8').val();
	var len = $('#course_length_8').val();
	if((date===''&&!ischecked_date8())||(time===''&&!ischecked_time8())||(loc===''&&!ischecked_loc8())||des===''||((len>600||len<30)&&!ischecked_length8())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check9(){
	var date = $('#course_date_9').val();
	var time = $('#course_time_9').val();
	var loc = $('#course_loc_9').val();
	var des = $('#course_des_9').val();
	var len = $('#course_length_9').val();
	if((date===''&&!ischecked_date9())||(time===''&&!ischecked_time9())||(loc===''&&!ischecked_loc9())||des===''||((len>600||len<30)&&!ischecked_length9())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}
function check10(){
	var date = $('#course_date_10').val();
	var time = $('#course_time_10').val();
	var loc = $('#course_loc_10').val();
	var des = $('#course_des_10').val();
	var len = $('#course_length_10').val();
	if((date===''&&!ischecked_date10())||(time===''&&!ischecked_time10())||(loc===''&&!ischecked_loc10())||des===''||((len>600||len<30)&&!ischecked_length10())||!checkinfo())
		{
			return false;
		}else
			{
				return true;
			}
}

function disable0(){
	$('#course_date_0').attr('disabled','disabled');	
	$('#course_time_0').attr('disabled','disabled');
	$('#course_loc_0').attr('disabled','disabled');
	$('#course_des_0').attr('disabled','disabled');
	$('#status_all_0').attr('disabled','disabled');
	$('#status_added_0').attr('disabled','disabled');
	$('#status_classed_0').attr('disabled','disabled');
	$('#tba_date0').attr('disabled','disabled');
	$('#tba_time0').attr('disabled','disabled');
	$('#tba_length0').attr('disabled','disabled');
	$('#tba_loc0').attr('disabled','disabled');
	disableinfo();
	$('#course_length_0').attr('disabled','disabled');
}
function disable1(){
	$('#course_date_1').attr('disabled','disabled');
	$('#course_time_1').attr('disabled','disabled');
	$('#course_loc_1').attr('disabled','disabled');
	$('#course_des_1').attr('disabled','disabled');$('#course_length_1').attr('disabled','disabled');
	$('#status_all_1').attr('disabled','disabled');
	$('#status_added_1').attr('disabled','disabled');
	$('#status_classed_1').attr('disabled','disabled');
	$('#tba_date1').attr('disabled','disabled');
	$('#tba_time1').attr('disabled','disabled');
	$('#tba_length1').attr('disabled','disabled');
	$('#tba_loc1').attr('disabled','disabled');disableinfo();
}
function disable2(){
	$('#course_date_2').attr('disabled','disabled');
	$('#course_time_2').attr('disabled','disabled');
	$('#course_loc_2').attr('disabled','disabled');
	$('#course_des_2').attr('disabled','disabled');
	$('#status_all_2').attr('disabled','disabled');$('#course_length_2').attr('disabled','disabled');
	$('#status_added_2').attr('disabled','disabled');
	$('#status_classed_2').attr('disabled','disabled');
	$('#tba_date2').attr('disabled','disabled');
	$('#tba_time2').attr('disabled','disabled');
	$('#tba_length2').attr('disabled','disabled');
	$('#tba_loc2').attr('disabled','disabled');disableinfo();
}
function disable3(){
	$('#course_date_3').attr('disabled','disabled');
	$('#course_time_3').attr('disabled','disabled');
	$('#course_loc_3').attr('disabled','disabled');
	$('#course_des_3').attr('disabled','disabled');
	$('#status_all_3').attr('disabled','disabled');$('#course_length_3').attr('disabled','disabled');
	$('#status_added_3').attr('disabled','disabled');
	$('#status_classed_3').attr('disabled','disabled');
	$('#tba_date3').attr('disabled','disabled');
	$('#tba_time3').attr('disabled','disabled');
	$('#tba_length3').attr('disabled','disabled');
	$('#tba_loc3').attr('disabled','disabled');disableinfo();
}
function disable4(){
	$('#course_date_4').attr('disabled','disabled');
	$('#course_time_4').attr('disabled','disabled');
	$('#course_loc_4').attr('disabled','disabled');
	$('#course_des_4').attr('disabled','disabled');
	$('#status_all_4').attr('disabled','disabled');$('#course_length_4').attr('disabled','disabled');
	$('#status_added_4').attr('disabled','disabled');
	$('#status_classed_4').attr('disabled','disabled');
	$('#tba_date4').attr('disabled','disabled');
	$('#tba_time4').attr('disabled','disabled');
	$('#tba_length4').attr('disabled','disabled');
	$('#tba_loc4').attr('disabled','disabled');disableinfo();
}
function disable5(){
	$('#course_date_5').attr('disabled','disabled');
	$('#course_time_5').attr('disabled','disabled');
	$('#course_loc_5').attr('disabled','disabled');
	$('#course_des_5').attr('disabled','disabled');$('#course_length_5').attr('disabled','disabled');
	$('#status_all_5').attr('disabled','disabled');
	$('#status_added_5').attr('disabled','disabled');
	$('#status_classed_5').attr('disabled','disabled');
	$('#tba_date5').attr('disabled','disabled');
	$('#tba_time5').attr('disabled','disabled');
	$('#tba_length5').attr('disabled','disabled');
	$('#tba_loc5').attr('disabled','disabled');disableinfo();
}
function disable6(){
	$('#course_date_6').attr('disabled','disabled');
	$('#course_time_6').attr('disabled','disabled');
	$('#course_loc_6').attr('disabled','disabled');
	$('#course_des_6').attr('disabled','disabled');
	$('#status_all_6').attr('disabled','disabled');$('#course_length_6').attr('disabled','disabled');
	$('#status_added_6').attr('disabled','disabled');
	$('#status_classed_6').attr('disabled','disabled');
	$('#tba_date6').attr('disabled','disabled');
	$('#tba_time6').attr('disabled','disabled');
	$('#tba_length6').attr('disabled','disabled');
	$('#tba_loc6').attr('disabled','disabled');disableinfo();
}
function disable7(){
	$('#course_date_7').attr('disabled','disabled');
	$('#course_time_7').attr('disabled','disabled');
	$('#course_loc_7').attr('disabled','disabled');$('#course_length_7').attr('disabled','disabled');
	$('#course_des_7').attr('disabled','disabled');
	$('#status_all_7').attr('disabled','disabled');
	$('#status_added_7').attr('disabled','disabled');
	$('#status_classed_7').attr('disabled','disabled');
	$('#tba_date7').attr('disabled','disabled');
	$('#tba_time7').attr('disabled','disabled');
	$('#tba_length7').attr('disabled','disabled');
	$('#tba_loc7').attr('disabled','disabled');disableinfo();
}
function disable8(){
	$('#course_date_8').attr('disabled','disabled');
	$('#course_time_8').attr('disabled','disabled');
	$('#course_loc_8').attr('disabled','disabled');
	$('#course_des_8').attr('disabled','disabled');$('#course_length_8').attr('disabled','disabled');
	$('#status_all_8').attr('disabled','disabled');
	$('#status_added_8').attr('disabled','disabled');
	$('#status_classed_8').attr('disabled','disabled');
	$('#tba_date8').attr('disabled','disabled');
	$('#tba_time8').attr('disabled','disabled');
	$('#tba_length8').attr('disabled','disabled');
	$('#tba_loc8').attr('disabled','disabled');disableinfo();
}
function disable9(){
	$('#course_date_9').attr('disabled','disabled');
	$('#course_time_9').attr('disabled','disabled');
	$('#course_loc_9').attr('disabled','disabled');
	$('#course_des_9').attr('disabled','disabled');$('#course_length_9').attr('disabled','disabled');
	$('#status_all_9').attr('disabled','disabled');
	$('#status_added_9').attr('disabled','disabled');
	$('#status_classed_9').attr('disabled','disabled');
	$('#tba_date9').attr('disabled','disabled');
	$('#tba_time9').attr('disabled','disabled');
	$('#tba_length9').attr('disabled','disabled');
	$('#tba_loc9').attr('disabled','disabled');disableinfo();
}
function disable10(){
	$('#course_date_10').attr('disabled','disabled');
	$('#course_time_10').attr('disabled','disabled');
	$('#course_loc_10').attr('disabled','disabled');
	$('#course_des_10').attr('disabled','disabled');$('#course_length_10').attr('disabled','disabled');
	$('#status_all_10').attr('disabled','disabled');
	$('#status_added_10').attr('disabled','disabled');
	$('#status_classed_10').attr('disabled','disabled');
	$('#tba_date10').attr('disabled','disabled');
	$('#tba_time10').attr('disabled','disabled');
	$('#tba_length10').attr('disabled','disabled');
	$('#tba_loc10').attr('disabled','disabled');disableinfo();
}


function enable0(){
	if(!$('#tba_date0').is(':checked'))
		{
			$('#course_date_0').removeAttr('disabled');
		}
	if(!$('#tba_time0').is(':checked'))
		{
			$('#course_time_0').removeAttr('disabled');
		}
	if(!$('#tba_loc0').is(':checked'))
		{
			$('#course_loc_0').removeAttr('disabled');
		}
	if(!$('#tba_length0').is(':checked'))
		{
			$('#course_length_0').removeAttr('disabled');
		}
	$('#course_des_0').removeAttr('disabled');
	$('#status_all_0').removeAttr('disabled');
	$('#status_added_0').removeAttr('disabled');
	$('#status_classed_0').removeAttr('disabled');
	
	$('#tba_date0').removeAttr('disabled');
	$('#tba_time0').removeAttr('disabled');
	$('#tba_length0').removeAttr('disabled');
	$('#tba_loc0').removeAttr('disabled');enableinfo();
}
function enable1(){
	if(!$('#tba_date1').is(':checked'))
		{
			$('#course_date_1').removeAttr('disabled');
		}
	if(!$('#tba_time1').is(':checked'))
		{
			$('#course_time_1').removeAttr('disabled');
		}
	if(!$('#tba_loc1').is(':checked'))
		{
			$('#course_loc_1').removeAttr('disabled');
		}
	if(!$('#tba_length1').is(':checked'))
		{
			$('#course_length_1').removeAttr('disabled');
		}
	$('#tba_date1').removeAttr('disabled');
	$('#tba_time1').removeAttr('disabled');
	$('#tba_length1').removeAttr('disabled');
	$('#tba_loc1').removeAttr('disabled');
enableinfo();
	$('#course_des_1').removeAttr('disabled');
	$('#status_all_1').removeAttr('disabled');
	$('#status_added_1').removeAttr('disabled');
	$('#status_classed_1').removeAttr('disabled');
}
function enable2(){
	if(!$('#tba_date2').is(':checked'))
		{
			$('#course_date_2').removeAttr('disabled');
		}
	if(!$('#tba_time2').is(':checked'))
		{
			$('#course_time_2').removeAttr('disabled');
		}
	if(!$('#tba_loc2').is(':checked'))
		{
			$('#course_loc_2').removeAttr('disabled');
		}
	if(!$('#tba_length2').is(':checked'))
		{
			$('#course_length_2').removeAttr('disabled');
		}
	$('#tba_date2').removeAttr('disabled');
	$('#tba_time2').removeAttr('disabled');
	$('#tba_length2').removeAttr('disabled');
	$('#tba_loc2').removeAttr('disabled');
enableinfo();
	$('#course_des_2').removeAttr('disabled');
	$('#status_all_2').removeAttr('disabled');
	$('#status_added_2').removeAttr('disabled');
	$('#status_classed_2').removeAttr('disabled');
}
function enable3(){
	if(!$('#tba_date3').is(':checked'))
		{
			$('#course_date_3').removeAttr('disabled');
		}
	if(!$('#tba_time3').is(':checked'))
		{
			$('#course_time_3').removeAttr('disabled');
		}
	if(!$('#tba_loc3').is(':checked'))
		{
			$('#course_loc_3').removeAttr('disabled');
		}
	if(!$('#tba_length3').is(':checked'))
		{
			$('#course_length_3').removeAttr('disabled');
		}
	$('#tba_date3').removeAttr('disabled');
	$('#tba_time3').removeAttr('disabled');
	$('#tba_length3').removeAttr('disabled');
	$('#tba_loc3').removeAttr('disabled');
enableinfo();
	$('#course_des_3').removeAttr('disabled');
	$('#status_all_3').removeAttr('disabled');
	$('#status_added_3').removeAttr('disabled');
	$('#status_classed_3').removeAttr('disabled');
}
function enable4(){
	if(!$('#tba_date4').is(':checked'))
		{
			$('#course_date_4').removeAttr('disabled');
		}
	if(!$('#tba_time4').is(':checked'))
		{
			$('#course_time_4').removeAttr('disabled');
		}
	if(!$('#tba_loc4').is(':checked'))
		{
			$('#course_loc_4').removeAttr('disabled');
		}
	if(!$('#tba_length4').is(':checked'))
		{
			$('#course_length_4').removeAttr('disabled');
		}
	$('#tba_date4').removeAttr('disabled');
	$('#tba_time4').removeAttr('disabled');
	$('#tba_length4').removeAttr('disabled');
	$('#tba_loc4').removeAttr('disabled');
enableinfo();
	$('#course_des_4').removeAttr('disabled');
	$('#status_all_4').removeAttr('disabled');
	$('#status_added_4').removeAttr('disabled');
	$('#status_classed_4').removeAttr('disabled');
}
function enable5(){
	if(!$('#tba_date5').is(':checked'))
		{
			$('#course_date_5').removeAttr('disabled');
		}
	if(!$('#tba_time5').is(':checked'))
		{
			$('#course_time_5').removeAttr('disabled');
		}
	if(!$('#tba_loc5').is(':checked'))
		{
			$('#course_loc_5').removeAttr('disabled');
		}
	if(!$('#tba_length5').is(':checked'))
		{
			$('#course_length_5').removeAttr('disabled');
		}
	$('#tba_date5').removeAttr('disabled');
	$('#tba_time5').removeAttr('disabled');
	$('#tba_length5').removeAttr('disabled');
	$('#tba_loc5').removeAttr('disabled');
enableinfo();
	$('#course_des_5').removeAttr('disabled');
	$('#status_all_5').removeAttr('disabled');
	$('#status_added_5').removeAttr('disabled');
	$('#status_classed_5').removeAttr('disabled');
}
function enable6(){
	if(!$('#tba_date6').is(':checked'))
		{
			$('#course_date_6').removeAttr('disabled');
		}
	if(!$('#tba_time6').is(':checked'))
		{
			$('#course_time_6').removeAttr('disabled');
		}
	if(!$('#tba_loc6').is(':checked'))
		{
			$('#course_loc_6').removeAttr('disabled');
		}
	if(!$('#tba_length6').is(':checked'))
		{
			$('#course_length_6').removeAttr('disabled');
		}
	$('#tba_date6').removeAttr('disabled');
	$('#tba_time6').removeAttr('disabled');
	$('#tba_length6').removeAttr('disabled');
	$('#tba_loc6').removeAttr('disabled');
enableinfo();
	$('#course_des_6').removeAttr('disabled');
	$('#status_all_6').removeAttr('disabled');
	$('#status_added_6').removeAttr('disabled');
	$('#status_classed_6').removeAttr('disabled');
}
function enable7(){
	if(!$('#tba_date7').is(':checked'))
		{
			$('#course_date_7').removeAttr('disabled');
		}
	if(!$('#tba_time7').is(':checked'))
		{
			$('#course_time_7').removeAttr('disabled');
		}
	if(!$('#tba_loc7').is(':checked'))
		{
			$('#course_loc_7').removeAttr('disabled');
		}
	if(!$('#tba_length7').is(':checked'))
		{
			$('#course_length_7').removeAttr('disabled');
		}
	$('#tba_date7').removeAttr('disabled');
	$('#tba_time7').removeAttr('disabled');
	$('#tba_length7').removeAttr('disabled');
	$('#tba_loc7').removeAttr('disabled');
enableinfo();
	$('#course_des_7').removeAttr('disabled');
	$('#status_all_7').removeAttr('disabled');
	$('#status_added_7').removeAttr('disabled');
	$('#status_classed_7').removeAttr('disabled');
}
function enable8(){
	if(!$('#tba_date8').is(':checked'))
		{
			$('#course_date_8').removeAttr('disabled');
		}
	if(!$('#tba_time8').is(':checked'))
		{
			$('#course_time_8').removeAttr('disabled');
		}
	if(!$('#tba_loc8').is(':checked'))
		{
			$('#course_loc_8').removeAttr('disabled');
		}
	if(!$('#tba_length8').is(':checked'))
		{
			$('#course_length_8').removeAttr('disabled');
		}
	$('#tba_date8').removeAttr('disabled');
	$('#tba_time8').removeAttr('disabled');
	$('#tba_length8').removeAttr('disabled');
	$('#tba_loc8').removeAttr('disabled');
enableinfo();
	$('#course_des_8').removeAttr('disabled');
	$('#status_all_8').removeAttr('disabled');
	$('#status_added_8').removeAttr('disabled');
	$('#status_classed_8').removeAttr('disabled');
}
function enable9(){
	if(!$('#tba_date9').is(':checked'))
		{
			$('#course_date_9').removeAttr('disabled');
		}
	if(!$('#tba_time9').is(':checked'))
		{
			$('#course_time_9').removeAttr('disabled');
		}
	if(!$('#tba_loc9').is(':checked'))
		{
			$('#course_loc_9').removeAttr('disabled');
		}
	if(!$('#tba_length9').is(':checked'))
		{
			$('#course_length_9').removeAttr('disabled');
		}
	$('#tba_date9').removeAttr('disabled');
	$('#tba_time9').removeAttr('disabled');
	$('#tba_length9').removeAttr('disabled');
	$('#tba_loc9').removeAttr('disabled');
enableinfo();
	$('#course_des_9').removeAttr('disabled');
	$('#status_all_9').removeAttr('disabled');
	$('#status_added_9').removeAttr('disabled');
	$('#status_classed_9').removeAttr('disabled');
}
function enable10(){
	if(!$('#tba_date10').is(':checked'))
		{
			$('#course_date_10').removeAttr('disabled');
		}
	if(!$('#tba_time10').is(':checked'))
		{
			$('#course_time_10').removeAttr('disabled');
		}
	if(!$('#tba_loc10').is(':checked'))
		{
			$('#course_loc_10').removeAttr('disabled');
		}
	if(!$('#tba_length10').is(':checked'))
		{
			$('#course_length_0').removeAttr('disabled');
		}
	$('#tba_date10').removeAttr('disabled');
	$('#tba_time10').removeAttr('disabled');
	$('#tba_length10').removeAttr('disabled');
	$('#tba_loc10').removeAttr('disabled');
enableinfo();
	$('#course_des_10').removeAttr('disabled');
	$('#status_all_10').removeAttr('disabled');
	$('#status_added_10').removeAttr('disabled');
	$('#status_classed_10').removeAttr('disabled');
}

function ischecked_date0(){
	if($('#tba_date0').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date1(){
	if($('#tba_date1').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date2(){
	if($('#tba_date2').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date3(){
	if($('#tba_date3').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date4(){
	if($('#tba_date4').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date5(){
	if($('#tba_date5').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date6(){
	if($('#tba_date6').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date7(){
	if($('#tba_date7').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date8(){
	if($('#tba_date8').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date9(){
	if($('#tba_date9').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_date10(){
	if($('#tba_date10').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}

function ischecked_time0(){
	if($('#tba_time0').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time1(){
	if($('#tba_time1').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time2(){
	if($('#tba_time2').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time3(){
	if($('#tba_time3').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time4(){
	if($('#tba_time4').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time5(){
	if($('#tba_time5').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time6(){
	if($('#tba_time6').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time7(){
	if($('#tba_time7').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time8(){
	if($('#tba_time8').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time9(){
	if($('#tba_time9').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_time10(){
	if($('#tba_time10').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}

function ischecked_length0(){
	if($('#tba_length0').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length1(){
	if($('#tba_length1').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length2(){
	if($('#tba_length2').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length3(){
	if($('#tba_length3').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length4(){
	if($('#tba_length4').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length5(){
	if($('#tba_length5').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length6(){
	if($('#tba_length6').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length7(){
	if($('#tba_length7').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length8(){
	if($('#tba_length8').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length9(){
	if($('#tba_length9').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_length10(){
	if($('#tba_length10').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}

function ischecked_loc0(){
	if($('#tba_loc0').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc1(){
	if($('#tba_loc1').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc2(){
	if($('#tba_loc2').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc3(){
	if($('#tba_loc3').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc4(){
	if($('#tba_loc4').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc5(){
	if($('#tba_loc5').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc6(){
	if($('#tba_loc6').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc7(){
	if($('#tba_loc7').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc8(){
	if($('#tba_loc8').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc9(){
	if($('#tba_loc9').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}
function ischecked_loc10(){
	if($('#tba_loc10').is(':checked'))
		{
			return true;
		}else
			{
				return false;
			}
}

function checkinfo(){
	var a = $('#course_title').val();
	var b = $('#course_tutor').val();
	var c = $('#course_wechat').val();
	var d = $('#course_email').val();
	var e = $('#course_phone').val();
	var f = $('#course_price').val();
	
	var pattern1 = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/);
	pass_email = pattern1.test(d);
	var pattern2 = new RegExp(/[0-9]{10}/);
	pass_number = pattern2.test(e);
	var pattern3 = new RegExp(/[0-9]/);
	pass_price = pattern3.test(f);
	
	if(a===''||b===''||c===''||d===''||e===''||f===''||!pass_email||!pass_number||!pass_price)
		{
			return false;
		}else
			{
				return true;
			}
}
function disableinfo(){
	 $('#course_title').attr('disabled','disabled');
	 $('#course_tutor').attr('disabled','disabled');
	 $('#course_wechat').attr('disabled','disabled');
	 $('#course_email').attr('disabled','disabled');
	 $('#course_phone').attr('disabled','disabled');
	 $('#course_price').attr('disabled','disabled');
}
function enableinfo(){
	$('#course_title').removeAttr('disabled');
	 $('#course_tutor').removeAttr('disabled');
	 $('#course_wechat').removeAttr('disabled');
	 $('#course_email').removeAttr('disabled');
	 $('#course_phone').removeAttr('disabled');
	 $('#course_price').removeAttr('disabled');
}


