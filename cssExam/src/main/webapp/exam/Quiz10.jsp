<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz10</title>
<style>
.quickconsult {
	width: 1000px;
	margin: 0 auto;
	background-color: #f7f7f7;
	padding: 70px 50px 70px;
	margin-top: 80px;
}

.quickconsult h5 {
	font-size: 32px;
	color: #333;
	font-weight: 600;
	line-height: 35px;
}

.quickconsult h5 p {
	font-size: 18px;
	color: #999292;
	font-weight: normal;
}

.quickconsult select {
	width: 130px;
}

.quickconsult .in_txt {
	width: 190px;
}

.quickconsult .phone {
	width: 90px;
}

.quickconsult .agreebox {
	text-align: left;
	background-color: #fff;
	padding: 30px 40px;
	line-height: 20px;
	font-size: 13px;
	color: #666;
	height: 140px;
	overflow: auto;
}

.quickconsult .private_label {
	text-align: left;
	display: block;
	font-size: 14px;
	margin-top: 20px;
}

.quickconsult .private_label input {
	width: 20px;
	height: 20px;
	border-color: #dcdcdc;
	margin-right: 10px;
}

.quickconsult table {
	width: 100%;
	font-size: 14px;
	border-top: 1px solid #dcdcdc;
	margin: 30px 0;
}

.quickconsult table tbody tr {
	height: 50px;
	line-height: 50px;
	border-bottom: 1px solid #dcdcdc;
}

.quickconsult table tbody th {
	background-color: #999292;
	color: #fff;
}

.quickconsult table tbody td {
	text-align: left;
	padding: 0 15px;
	color: #999;
}

.quickconsult table img {
	vertical-align: middle;
}

.quickconsult button {
	width: 180px;
	height: 45px;
}

.quickconsult .radio {
	vertical-align: text-top;
}
</style>
</head>
<body>
	<div class="quickconsult">

		<h5> 빠른 상담 예약 
			<p>직접 방문하시면 효과적인 공부방법을 체계적으로 상담해 드립니다.</p>
		</h5>
		<table>
			<colgroup>
				<col width="15%">
				<col width="40%">
				<col width="15%">
				<col width="35%">
			</colgroup>
			<tbody>
				<tr>
					<th>상담일시</th>
					<td colspan="3">
						<input type="text" class="in_txt"  /> 
						&nbsp;&nbsp; 
						<select id="appointment_time2"	>
								<option value="">선택</option>
								<option value="09:00">오전9시</option>
								<option value="10:00">오전10시</option>
								<option value="11:00">오전11시</option>
								<option value="12:00">오후12시</option>
								<option value="13:00">오후1시</option>
								<option value="14:00">오후2시</option>
								<option value="15:00">오후3시</option>
								<option value="16:00">오후4시</option>
								<option value="17:00">오후5시</option>
								<option value="18:00">오후6시</option>
								<option value="19:00">오후7시</option>
								<option value="20:00">오후8시</option>
								<option value="21:00">오후9시</option>
								<option value="22:00">오후10시</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="in_txt" /></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
						<label><input type="radio" name="gender" value="M" class="radio" /> 남</label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<label><input type="radio" name="gender" value="F" class="radio" /> 여</label>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<select id="tel1" class="phone">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="017">017</option>
							<option value="070">070</option>
							<option value="02">02</option>
							<option value="031">031</option>
							<option value="032">032</option>
							<option value="051">051</option>
							<option value="053">053</option>
						</select>&nbsp; - &nbsp; 
						<input type="text" class="in_txt phone" maxlength="4" /> &nbsp; - &nbsp;
						<input type="text" class="in_txt phone" maxlength="4" />
					</td>

				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="text" size="10" class="in_txt" /> @ <input type="text" size="10" class="in_txt" />
					</td>
				</tr>
				<tr>
					<th>궁금한 점</th>
					<td>
						<textarea name="content" style="width: 95%;" placeholder="* 궁금한 점이 있으시면 남겨주세요. 없으시면 입력하지 않아도 됩니다."></textarea>
					</td>
				</tr>
			</tbody>
		</table>

		<div class="agreebox">
			<strong>(주)케이지에듀원(이하'회사'라한다)의 서비스를 이용하기 위해서는 다음 개인정보 수집항목을
				확인 후 동의하셔야 합니다.</strong><br />
			<br /> <strong>1. 개인정보의 수집 이용 목적</strong><br /> - 수강료문의, 방문상담신청,
			교육상담신청, 가이드북다운로드, 내게맞는과정찾기, 카톡상담, SMS위치안내, 위탁교육안내<br />
			<br /> <strong>2. 개인정보 항목</strong><br /> - 수강료 문의 : 이름, 연락처, 이메일,
			성별<br /> - 방문상담신청 : 이름, 연락처, 이메일, 성별, 상담일시<br /> - 교육상담신청 : 이름, 연락처,
			이메일, 성별, 상담일시<br /> - 내게맞는과정찾기 : 이름, 연락처, 원하시는과정<br /> - 가이드북받기 :
			이름, 연락처<br /> - 빠른방문상담예약 : 이름, 연락처, 상담일시 <br /> - 카톡상담 : 이름, 연락처,
			카카오톡아이디<br /> - SMS위치안내 : 이름, 연락처, 지점, 방문목적<br /> - 위탁교육안내 : 이름,
			연락처, 기관명, 교육분야<br />
			<br /> <strong>3. 개인정보의 보유기간 및 이용기간</strong><br /> - 신청 후 6개월까지<br />
			<br /> <strong>4. 개인정보 제공 동의 거부 권리 및 동의 거부에 따른 불이익</strong><br />
			귀하는 개인 정보 제공 동의를 거부 할 권리가 있으며, 거절하신 경우에는 상담 및 예약 서비스의 제공이 제한 될 수
			있습니다.<br /> 위 보유기간에도 불구하고 계속 보유하여야 할 필요가 있을 경우에는 귀하의 동의를 받습니다.
		</div>

		<label class="private_label"><input type="checkbox"	name="agree_ck" value="개인정보수집동의" />개인정보 수집동의</label> <br />
		<button type="button" class="btn_black">문의하기</button>
	</div>
</body>
</html>
