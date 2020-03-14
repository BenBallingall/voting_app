import 'dart:io';
import 'dart:convert';
//import 'dart:html';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:connectivity/connectivity.dart';

//https://2hqxgjv66f.execute-api.ap-southeast-2.amazonaws.com/dev/bills

/// Function to fetch the bills from the API
///
/// Returns a list of bill dicts
///
/// Usage:
///
/// `var b = await fetchBills();`
Future<List> fetchBills() async {
  final response = await http.get(
      'https://2hqxgjv66f.execute-api.ap-southeast-2.amazonaws.com/dev/bills');
  if (response.statusCode == 200) {
    final List listOfBills = json.decode(response.body);
    return listOfBills;
  } else {
    throw Exception('Failed to load bills');
  }
}

/// This is the Dev version of fetchBills() while the CORS issue still needs to be fixed
Future<List> fetchBillsDev() async {
  return ([
    {
      "Chamber": "House",
      "Short Title": "Aged Care Amendment (Staffing Ratio Disclosure) 2019",
      "Intro House": "2019-07-22",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6356",
      "id": "r6356",
      "Summary":
          "Amends the Aged Care Act 1997 to: require approved residential care service providers to notify the secretary of the ratios of aged care recipients to staff members, broken down into categories of staff members, on a quarterly basis; and require a review of the proposed amendments 12 months after their commencement.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6356_first-reps/toc_word/19139b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6356_first-reps/toc_pdf/19139b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6356_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6356_ems_65743795-0918-474d-a518-2fa392ec84f3/upload_word/19139EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6356_ems_65743795-0918-474d-a518-2fa392ec84f3/upload_pdf/19139EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6356_ems_65743795-0918-474d-a518-2fa392ec84f3%22",
      "Yes": 6866,
      "No": 9365
    },
    {
      "Chamber": "House",
      "Short Title":
          "Aged Care Legislation Amendment (Improved Home Care Payment Administration No. 1) 2020",
      "Intro House": "2020-02-27",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6501",
      "id": "r6501",
      "Summary":
          "Amends the Aged Care Act 1997 and Aged Care (Transitional Provisions) Act 1997 to change home care subsidy from being paid to an approved provider in advance of the home care services being delivered to a consumer, to a payment made in arrears after the services have been delivered.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6501_first-reps/toc_word/20014b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6501_first-reps/toc_pdf/20014b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6501_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6501_ems_c9cdce94-e56a-4b8d-87dc-0b650aa24137/upload_word/732538.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6501_ems_c9cdce94-e56a-4b8d-87dc-0b650aa24137/upload_pdf/732538.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6501_ems_c9cdce94-e56a-4b8d-87dc-0b650aa24137%22",
      "Yes": 6484,
      "No": 4018
    },
    {
      "Chamber": "House",
      "Short Title":
          "Aged Care Quality and Safety Commission Amendment (Worker Screening Database) 2019",
      "Intro House": "2019-07-22",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6357",
      "id": "r6357",
      "Summary":
          "Amends the Aged Care Quality and Safety Commission Act 2018 to establish a database for nationally consistent worker screening to enable employers to search the database to screen potential employees for any history of misconduct.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6357_first-reps/toc_word/19140b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6357_first-reps/toc_pdf/19140b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6357_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6357_ems_c12c9bdc-1071-4a76-82cd-7e768b344f83/upload_word/19140EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6357_ems_c12c9bdc-1071-4a76-82cd-7e768b344f83/upload_pdf/19140EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6357_ems_c12c9bdc-1071-4a76-82cd-7e768b344f83%22",
      "Yes": 6116,
      "No": 4712
    },
    {
      "Chamber": "House",
      "Short Title":
          "Agricultural and Veterinary Chemicals Legislation Amendment (Australian Pesticides and Veterinary Medicines Authority Board and Other Improvements) 2019",
      "Intro House": "2019-09-18",
      "Passed House": "2019-12-03",
      "Intro Senate": "2019-12-05",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6407",
      "id": "r6407",
      "Summary":
          "Amends the: Agricultural and Veterinary Chemicals Code Act 1994 in relation to: information to be taken into account by the Australian Pesticides and Veterinary Medicines Authority (APVMA) in determining applications; approval and registration for prescribed active constituents, chemical products or labels; limits on use of information; computerised decision-making by the APVMA; management of errors in an application at the preliminary assessment stage; variation of relevant particulars and conditions; variation of approval or registration during suspension; suspension or cancellation of approval or registration for provision of false or misleading information; notification and publication of voluntary recalls; obligations on holders and applicants to inform the APVMA of new information where it relates to the safety criteria; definition of \u2018registered chemical product\u2019; supply or registered chemical products with unapproved label; safety, efficacy, trade and labelling criteria; clarification that the \u2018expiry date\u2019 is the date after which a chemical product must not be used; Agricultural and Veterinary Chemicals Products (Collection of Levy) Act 1994 and Agricultural and Veterinary Chemicals (Administration) Act 1992 to simplify reporting requirements for annual returns; Agricultural and Veterinary Chemicals (Administration) Act 1992 and Agricultural and Veterinary Chemicals Code Act 1994 in relation to: the establishment of civil pecuniary penalties for providing false or misleading information; the Maximum Residue Limits Standard; and minor and technical amendments, including the removal of redundant provisions; and Agricultural and Veterinary Chemicals (Administration) Act 1992 to: remove the requirement for the APVMA to prepare an annual operational plan; and establish a governance board for the APVMA and cease the existing APVMA Advisory Board. Also repeals the Agricultural and Veterinary Chemicals Legislation Amendment (Removing Re-approval and Re-registration) Act 2014.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6407_first-reps/toc_word/19173b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6407_first-reps/toc_pdf/19173b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6407_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6407_ems_b0404fb4-211c-4b71-ac10-2ea2b3393ed5/upload_word/19173EM.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6407_ems_b0404fb4-211c-4b71-ac10-2ea2b3393ed5/upload_pdf/19173EM.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6407_ems_b0404fb4-211c-4b71-ac10-2ea2b3393ed5%22",
      "Yes": 7760,
      "No": 7005
    },
    {
      "Chamber": "House",
      "Short Title": "Agriculture Legislation Repeal 2019",
      "Intro House": "2019-07-02",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6324",
      "id": "r6324",
      "Summary":
          "Repeals the Australian Meat and Live-stock Corporation Amendment Act 1990, National Residue Survey (Consequential Provisions) Act 1992, Wool International Act 1993 and Wool International Privatisation Act 1999.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6324_first-reps/toc_word/19084b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6324_first-reps/toc_pdf/19084b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6324_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6324_ems_879a41e5-879a-4a12-bcfc-ddb703ba7fa1/upload_word/710911.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6324_ems_879a41e5-879a-4a12-bcfc-ddb703ba7fa1/upload_pdf/710911.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6324_ems_879a41e5-879a-4a12-bcfc-ddb703ba7fa1%22",
      "Yes": 5827,
      "No": 3735
    },
    {
      "Chamber": "House",
      "Short Title":
          "Anti-Money Laundering and Counter-Terrorism Financing and Other Legislation Amendment 2019",
      "Intro House": "2019-10-17",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6431",
      "id": "r6431",
      "Summary":
          "Amends the: Anti-Money Laundering and Counter-Terrorism Financing Act 2006 to: expand the circumstances in which reporting entities may rely on customer identification and verification procedures undertaken by a third party; explicitly prohibit reporting entities from providing a designated service if customer identification procedures cannot be performed; prohibit financial institutions from entering into a correspondent banking relationship that permits its accounts to be used by a shell bank; require banks to conduct due diligence assessments before entering, and during, all correspondent banking relationships; and expand exceptions to the prohibition on tipping off to permit reporting entities to share suspicious matter reports and related information with external auditors and foreign members of corporate and designated business groups; Anti-Money Laundering and Counter-Terrorism Financing Act 2006 and Inspector-General of Intelligence and Security Act 1986 to replace existing \u2018designated agency\u2019 information sharing provisions (relating to the use and disclosure of AUSTRAC information) with a more general information sharing power; Anti-Money Laundering and Counter-Terrorism Financing Act 2006, Proceeds of Crime Act 2002 and Surveillance Devices Act 2004 to create a single reporting requirement for the cross-border movement of monetary instruments; Criminal Code Act 1995 to: clarify that the existence of one Commonwealth constitutional connector is sufficient to establish an instrument of crime offence; deem money or property provided by undercover law enforcement as part of a controlled operation to be the proceeds of crime for the purposes of prosecution; and provide for transitional arrangements; and Australian Federal Police Act 1979 to create a new offence of dishonestly representing conferral of police awards.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6431_first-reps/toc_word/19202b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6431_first-reps/toc_pdf/19202b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6431_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6431_ems_02d35e3c-143d-4d83-8877-e31cf490ce8a/upload_word/719554.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6431_ems_02d35e3c-143d-4d83-8877-e31cf490ce8a/upload_pdf/719554.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6431_ems_02d35e3c-143d-4d83-8877-e31cf490ce8a%22",
      "Yes": 2604,
      "No": 560
    },
    {
      "Chamber": "House",
      "Short Title": "Appropriation (No. 3) 2019-2020",
      "Intro House": "2019-02-13",
      "Passed House": "2019-03-04",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6496",
      "id": "r6496",
      "Summary":
          "Appropriates additional money out of the Consolidated Revenue Fund for the ordinary annual services of the government, in addition to the appropriations provided for by the Appropriation Act (No. 1) 2019-2020 and the Supply Act (No. 1) 2019-2020.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6496_first-reps/toc_word/20012b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6496_first-reps/toc_pdf/20012b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6496_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6496_ems_40934758-2600-4ed8-9cbb-67aec2f76777/upload_word/730818.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6496_ems_40934758-2600-4ed8-9cbb-67aec2f76777/upload_pdf/730818.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6496_ems_40934758-2600-4ed8-9cbb-67aec2f76777%22",
      "Yes": 3632,
      "No": 8866
    },
    {
      "Chamber": "House",
      "Short Title": "Appropriation (No. 4) 2019-2020",
      "Intro House": "2019-02-13",
      "Passed House": "2019-03-04",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6495",
      "id": "r6495",
      "Summary":
          "Appropriates additional money out of the Consolidated Revenue Fund for certain expenditure, in addition to the appropriations provided for by the Appropriation Act (No. 2) 2019-2020 and the Supply Act (No. 2) 2019-2020.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6495_first-reps/toc_word/20013b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6495_first-reps/toc_pdf/20013b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6495_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6495_ems_c3c1e6f7-8653-4e3b-97f0-6add40507cef/upload_word/730819.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6495_ems_c3c1e6f7-8653-4e3b-97f0-6add40507cef/upload_pdf/730819.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6495_ems_c3c1e6f7-8653-4e3b-97f0-6add40507cef%22",
      "Yes": 612,
      "No": 1515
    },
    {
      "Chamber": "House",
      "Short Title": "Australian Banks (Government Audit) 2019",
      "Intro House": "2019-12-02",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6443",
      "id": "r6443",
      "Summary":
          "Provides for independent audits of Australian banking corporations and their subsidiaries by the Auditor-General.",
      "Sponsor": "KATTER,Bob,Jnr,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6443_first-reps/toc_word/19219b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6443_first-reps/toc_pdf/19219b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6443_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6443_ems_38fa1de7-dd8d-44af-80e4-7498e108154b/upload_word/19219EMKatter.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6443_ems_38fa1de7-dd8d-44af-80e4-7498e108154b/upload_pdf/19219EMKatter.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6443_ems_38fa1de7-dd8d-44af-80e4-7498e108154b%22",
      "Yes": 8789,
      "No": 5847
    },
    {
      "Chamber": "House",
      "Short Title": "Australian Bill of Rights 2019",
      "Intro House": "2019-09-16",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6404",
      "id": "r6404",
      "Summary":
          "Gives effect to certain provisions of the International Covenant on Civil and Political Rights, the International Covenant on Economic, Social and Cultural Rights, the Convention on the Rights of the Child and the Convention against Torture and Other Cruel, Inhumane or Degrading Treatment or Punishment by: declaring an Australian Bill of Rights; providing that any Commonwealth, state or territory law that is inconsistent with the Bill of Rights is invalid to the extent of the inconsistency; specifying that Commonwealth, state and territory laws must be interpreted consistently with the Bill of Rights; and providing the Australian Human Rights Commission with a range of additional powers and functions in relation to the rights and freedoms in the Bill of Rights.",
      "Sponsor": "WILKIE,Andrew,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6404_first-reps/toc_word/19187b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6404_first-reps/toc_pdf/19187b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6404_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6404_ems_e8fd1431-106a-42e4-8876-523c270e7923/upload_word/19187EMWilkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6404_ems_e8fd1431-106a-42e4-8876-523c270e7923/upload_pdf/19187EMWilkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6404_ems_e8fd1431-106a-42e4-8876-523c270e7923%22",
      "Yes": 868,
      "No": 4007
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Broadcasting Corporation Amendment (Rural and Regional Measures) 2019",
      "Intro House": "2019-07-31",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6382",
      "id": "r6382",
      "Summary":
          "Amends the Australian Broadcasting Corporation Act 1983 to: amend the Australian Broadcasting Corporation (ABC) Charter to require the ABC to broadcast programs that contribute to a sense of regional and national identity, and inform and entertain, and reflect the geographic and cultural diversity of, the Australian community; require the ABC Board to have two members with a substantial connection to, or substantial experience in, a regional area through business, industry or community involvement; establish a Regional Advisory Council to advise the ABC Board; and require the ABC Board to report annually on a range of additional matters, including the total number of individuals employed in regional and metropolitan areas, and the journalist to support staff ratio of employees.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6382_first-reps/toc_word/19106b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6382_first-reps/toc_pdf/19106b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6382_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6382_ems_c52d9bfe-849e-4ae3-893f-dbc05c9ec260/upload_word/713762.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6382_ems_c52d9bfe-849e-4ae3-893f-dbc05c9ec260/upload_pdf/713762.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6382_ems_c52d9bfe-849e-4ae3-893f-dbc05c9ec260%22",
      "Yes": 5755,
      "No": 9420
    },
    {
      "Chamber": "House",
      "Short Title": "Australian Business Growth Fund 2019",
      "Intro House": "2019-12-05",
      "Passed House": "2020-02-06",
      "Intro Senate": "2020-02-10",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6463",
      "id": "r6463",
      "Summary":
          "Establishes the Australian Business Growth Fund (ABGF) to: provide a source of 'patient capital' for small and medium enterprises; authorise investment by the Commonwealth in the ABGF; and appropriate AUD 100 million for the purposes of the ABGF.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6463_first-reps/toc_word/19234b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6463_first-reps/toc_pdf/19234b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6463_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6463_ems_fd18e3b4-5a9b-435c-8609-f7a0c232e0a0/upload_word/723651.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6463_ems_fd18e3b4-5a9b-435c-8609-f7a0c232e0a0/upload_pdf/723651.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6463_ems_fd18e3b4-5a9b-435c-8609-f7a0c232e0a0%22",
      "Yes": 788,
      "No": 6761
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Capital Territory (Self-Government) Amendment (ACT Integrity Commission Powers) 2020",
      "Intro House": "2020-02-24",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6484",
      "id": "r6484",
      "Summary":
          "Amends the Australian Capital Territory (Self-Government) Act 1988 to allow the Australian Capital Territory (ACT) Legislative Assembly to make laws relating to the Australian Federal Police's (AFP) provision of police services, where those laws relate to the investigation of integrity and corruption with respect to AFP services provided for the ACT.",
      "Sponsor": "LEIGH,Andrew,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6484_first-reps/toc_word/20016b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6484_first-reps/toc_pdf/20016b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6484_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6484_ems_63080380-7e90-48ab-a56e-d70f71369ed9/upload_word/20016EMLeigh.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6484_ems_63080380-7e90-48ab-a56e-d70f71369ed9/upload_pdf/20016EMLeigh.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6484_ems_63080380-7e90-48ab-a56e-d70f71369ed9%22",
      "Yes": 9002,
      "No": 5735
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Citizenship Amendment (Citizenship Cessation) 2019",
      "Intro House": "2019-09-19",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6409",
      "id": "r6409",
      "Summary":
          "Amends the: Australian Citizenship Act 2007 to: replace the current arrangements, whereby a person\u2019s Australian citizenship automatically ceases through certain conduct, with a discretion for the Minister for Home Affairs to determine that a person who is a national or citizen of a country other than Australia ceases to be an Australian citizen if they have: engaged in specified terrorism-related conduct; fought for, or been in the service of, a declared terrorist organisation outside Australia; or engaged in conduct that results in a conviction for a specified terrorism offence; include transitional provisions to deal with cases where the minister is unaware that a person may have lost their citizenship under the current provisions; reduce the sentence term threshold for which a person convicted of a specified terrorism offence may be considered for citizenship cessation from 6 to 3 years; and extend the period in which persons convicted of a specified terrorism offence resulting in at least 3 years imprisonment may be considered for citizenship cessation from 12 December 2015 to 29 May 2003; and Independent National Security Legislation Monitor Act 2010 and Intelligence Services Act 2001 to enable the Independent National Security Legislation Monitor and the Parliamentary Joint Committee on Intelligence and Security to review the operation, effectiveness and implication of the citizenship cessation provisions.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6409_first-reps/toc_word/19175b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6409_first-reps/toc_pdf/19175b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6409_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6409_ems_d8aa8fd3-3dbd-466a-97e1-4e72347cba0a/upload_word/19175EM.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6409_ems_d8aa8fd3-3dbd-466a-97e1-4e72347cba0a/upload_pdf/19175EM.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6409_ems_d8aa8fd3-3dbd-466a-97e1-4e72347cba0a%22",
      "Yes": 9128,
      "No": 1679
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Education Amendment (Direct Measure of Income) 2020",
      "Intro House": "2020-02-26",
      "Passed House": "2020-03-04",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6499",
      "id": "r6499",
      "Summary":
          "Amends the Australian Education Act 2013 to: introduce a new measure of income methodology for calculating a school community's capacity to contribute financially to a non-government school; enable adjustments to be made to the transition pathways of non-government schools to a nationally consistent Commonwealth share of the Schooling Resource Standard; and provide the authority and appropriation for the Commonwealth to make GST-inclusive payments where necessary.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6499_first-reps/toc_word/20009b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6499_first-reps/toc_pdf/20009b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6499_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6499_ems_bb099c22-0e04-4d0b-afdd-bf7d7f3a76ca/upload_word/730946.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6499_ems_bb099c22-0e04-4d0b-afdd-bf7d7f3a76ca/upload_pdf/730946.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6499_ems_bb099c22-0e04-4d0b-afdd-bf7d7f3a76ca%22",
      "Yes": 4057,
      "No": 4586
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Passports Amendment (Identity-matching Services) 2019",
      "Intro House": "2019-07-31",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6386",
      "id": "r6386",
      "Summary":
          "Amends the Australian Passports Act 2005 to enable the minister to make Australian travel document data available for the purposes of, and by the automated means intrinsic to, the identity-matching services to which the Commonwealth, states and territories agreed in the Intergovernmental Agreement on Identity Matching Services, agreed by COAG on 5 October 2017.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6386_first-reps/toc_word/19150b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6386_first-reps/toc_pdf/19150b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6386_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6386_ems_b063b85b-0541-488e-9e01-fcccdafe5f3f/upload_word/713752.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6386_ems_b063b85b-0541-488e-9e01-fcccdafe5f3f/upload_pdf/713752.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6386_ems_b063b85b-0541-488e-9e01-fcccdafe5f3f%22",
      "Yes": 4652,
      "No": 3242
    },
    {
      "Chamber": "House",
      "Short Title": "Australian Research Council Amendment 2019",
      "Intro House": "2019-09-18",
      "Passed House": "2019-11-26",
      "Intro Senate": "2019-11-27",
      "Passed Senate": "2020-02-11",
      "Assent Date": "2020-02-26",
      "Act No.": "7",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6411",
      "id": "r6411",
      "Summary":
          "Amends the Australian Research Council Act 2001 to: apply indexation to existing appropriation amounts for the financial years commencing on 1 July 2019, 1 July 2020 and 1 July 2021; and insert a new funding cap for the financial year commencing on 1 July 2022.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6411_first-reps/toc_word/19177b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6411_first-reps/toc_pdf/19177b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6411_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6411_ems_994c1488-e5bb-48e8-9e42-30e38e8f6aae/upload_word/716811.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6411_ems_994c1488-e5bb-48e8-9e42-30e38e8f6aae/upload_pdf/716811.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6411_ems_994c1488-e5bb-48e8-9e42-30e38e8f6aae%22",
      "Yes": 2475,
      "No": 5882
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Sports Anti-Doping Authority Amendment (Enhancing Australia\u2014\u0080\u0099s Anti-Doping Capability) 2019",
      "Intro House": "2019-10-17",
      "Passed House": "2019-12-04",
      "Intro Senate": "2019-12-05",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6432",
      "id": "r6432",
      "Summary":
          "Implements certain recommendations of the Report of the Review of Australia\u2019s Sports Integrity Arrangements (the Wood review) by amending the: Australian Sports Anti-Doping Authority Act 2006 and Australian Sports Commission Act 1989 to abolish the Anti-Doping Rule Violation Panel; and Australian Sports Anti-Doping Authority Act 2006 to: extend statutory protection against civil actions to national sporting organisations and their staff in the exercise of anti-doping rule violation (ADRV) functions; extend the current protection that allows an entrusted person to resist production of protected information to a court or tribunal to any person in possession of protected information; change the statutory threshold at which the Australian Sports Anti-Doping Authority CEO may issue a disclosure notice from \u2018reasonably believes\u2019 (that a person has information, documents or things that may be relevant to administration of the national anti-doping scheme) to \u2018reasonably suspects\u2019; allow a person entitled to inspect or view a document produced pursuant to a disclosure notice to do so only at such times and places as the CEO thinks appropriate; increase the penalty for non-compliance with a disclosure notice from 30 to 60 penalty units; and provide that a person is not excused from complying with the requirement to answer a question, and give information or provide a document or thing on the grounds that doing so may incriminate them or expose them to a penalty. Also makes amendments to three Acts contingent on the commencement of the Australian Sports Anti-Doping Authority Amendment (Sport Integrity Australia) Act,2019.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6432_first-reps/toc_word/19203b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6432_first-reps/toc_pdf/19203b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6432_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6432_ems_73799ab4-f25e-4dc4-b49b-96ad2ed597e6/upload_word/719465.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6432_ems_73799ab4-f25e-4dc4-b49b-96ad2ed597e6/upload_pdf/719465.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6432_ems_73799ab4-f25e-4dc4-b49b-96ad2ed597e6%22",
      "Yes": 5075,
      "No": 5431
    },
    {
      "Chamber": "House",
      "Short Title":
          "Australian Sports Anti-Doping Authority Amendment (Sport Integrity Australia) 2019",
      "Intro House": "2019-10-17",
      "Passed House": "2019-12-05",
      "Intro Senate": "2019-12-05",
      "Passed Senate": "2020-02-24",
      "Assent Date": "2020-03-06",
      "Act No.": "11",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6433",
      "id": "r6433",
      "Summary":
          "Implements a recommendation of the Report of the Review of Australia\u2019s Sports Integrity Arrangements (the Wood review) by amending the Australian Sports Anti-Doping Authority Act 2006 to: establish Sport Integrity Australia to bring together the functions of the Australian Sports Anti-Doping Authority and the National Integrity of Sport Unit within the Department of Health, as well as the sports integrity functions of Sport Australia; and amend the short title of the Act to the Sport Integrity Australia Act 2019. Also makes consequential amendments to eight Acts; and makes amendments to three Acts contingent on the commencement of the Australian Sports Anti-Doping Authority Amendment (Enhancing Australia's Anti-Doping Capability) Act 2019.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6433_first-reps/toc_word/19201b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6433_first-reps/toc_pdf/19201b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6433_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6433_ems_46a311d5-cb10-4f9c-80ce-f40adcea5665/upload_word/Addendum_Australian~nti-Doping%20Authority%20Amendment%20(Sport%20Integrity%20Australia)%20Bill%202019.DOCX;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6433_ems_46a311d5-cb10-4f9c-80ce-f40adcea5665/upload_pdf/Addendum_Australian~nti-Doping%20Authority%20Amendment%20(Sport%20Integrity%20Australia)%20Bill%202019.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6433_ems_46a311d5-cb10-4f9c-80ce-f40adcea5665%22",
      "Yes": 5814,
      "No": 8021
    },
    {
      "Chamber": "House",
      "Short Title": "Banking Amendment (Rural Finance Reform) 2019",
      "Intro House": "2019-07-22",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6358",
      "id": "r6358",
      "Summary":
          "Amends the Banking Act 1959 to impose certain obligations and requirements on authorised deposit-taking institutions in relation to loans of up to AUD 5 million to small primary production businesses.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6358_first-reps/toc_word/19138b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6358_first-reps/toc_pdf/19138b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6358_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6358_ems_786a9d6d-9c99-4656-b834-3ea2bc688af8/upload_word/19138EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6358_ems_786a9d6d-9c99-4656-b834-3ea2bc688af8/upload_pdf/19138EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6358_ems_786a9d6d-9c99-4656-b834-3ea2bc688af8%22",
      "Yes": 1781,
      "No": 5909
    },
    {
      "Chamber": "House",
      "Short Title":
          "Business Names Registration (Fees) Amendment (Registries Modernisation) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6468",
      "id": "r6468",
      "Summary":
          "Introduced with the Commonwealth Registers Bill 2019, Treasury Laws Amendment (Registries Modernisation and Other Measures) Bill 2019, Corporations (Fees) Amendment (Registries Modernisation) Bill 2019 and National Consumer Credit Protection (Fees) Amendment (Registries Modernisation) Bill 2019 to create a new Commonwealth business registry regime, the bill amends the Business Names Registration (Fees) Act 2011 to allow the registrar to collect fees related to the performance of registry functions or the exercise of a registry power.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6468_first-reps/toc_word/19239b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6468_first-reps/toc_pdf/19239b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6468_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6468_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_word/723538.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6468_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_pdf/723538.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6468_ems_e063b7ca-d61d-4993-a078-292990b204fc%22",
      "Yes": 5863,
      "No": 7081
    },
    {
      "Chamber": "House",
      "Short Title":
          "Climate Change Authority Amendment (Impact of 3 Degrees of Global Warming on Australia) 2019",
      "Intro House": "2019-12-02",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6461",
      "id": "r6461",
      "Summary":
          "Amends the Climate Change Authority Act 2011 to require the Climate Change Authority to review, by 1,July,2020, the impact of three degrees of global warming on the economy and the environment.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6461_first-reps/toc_word/19247b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6461_first-reps/toc_pdf/19247b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6461_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6461_ems_b563ad10-1958-4ddc-9aee-950628793c9d/upload_word/19247EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6461_ems_b563ad10-1958-4ddc-9aee-950628793c9d/upload_pdf/19247EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6461_ems_b563ad10-1958-4ddc-9aee-950628793c9d%22",
      "Yes": 6047,
      "No": 6806
    },
    {
      "Chamber": "House",
      "Short Title": "Climate Emergency Declaration 2020",
      "Intro House": "2020-03-02",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6506",
      "id": "r6506",
      "Summary":
          "The bill: declares an environment and climate emergency; outlines the obligations of public service agencies to recognise and act in accordance with the declaration; and establishes the Multi-Party Climate Emergency Committee to report to Cabinet in relation to the climate emergency declaration.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6506_first-reps/toc_word/20024b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6506_first-reps/toc_pdf/20024b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6506_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6506_ems_b5887160-5905-4382-b5d6-27a8130f8dec/upload_word/20024EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6506_ems_b5887160-5905-4382-b5d6-27a8130f8dec/upload_pdf/20024EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6506_ems_b5887160-5905-4382-b5d6-27a8130f8dec%22",
      "Yes": 728,
      "No": 1701
    },
    {
      "Chamber": "House",
      "Short Title": "Coal-Fired Power Funding Prohibition 2019",
      "Intro House": "2019-07-22",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6355",
      "id": "r6355",
      "Summary":
          "Prohibits the Commonwealth government or its agencies from funding the refurbishment, building or purchase of, or providing indirect assistance to, a coal-fired power station.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6355_first-reps/toc_word/19135b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6355_first-reps/toc_pdf/19135b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6355_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6355_ems_d18b71f0-2637-4e6d-b3d8-8135d7ad5b05/upload_word/19135EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6355_ems_d18b71f0-2637-4e6d-b3d8-8135d7ad5b05/upload_pdf/19135EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6355_ems_d18b71f0-2637-4e6d-b3d8-8135d7ad5b05%22",
      "Yes": 5558,
      "No": 2896
    },
    {
      "Chamber": "House",
      "Short Title": "Coal Prohibition (Quit Coal) 2019",
      "Intro House": "2019-10-14",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6422",
      "id": "r6422",
      "Summary":
          "Amends the: Customs Act 1901 to limit, and prohibit from 2030, the importation and exportation of thermal coal unless it is being used for research, analysis or display; and Environment Protection and Biodiversity Conservation Act 1999 to make consequential amendments.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6422_first-reps/toc_word/19196b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6422_first-reps/toc_pdf/19196b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6422_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6422_ems_7c7da799-4fd7-4f07-bb83-8743c6e86bac/upload_word/19196EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6422_ems_7c7da799-4fd7-4f07-bb83-8743c6e86bac/upload_pdf/19196EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6422_ems_7c7da799-4fd7-4f07-bb83-8743c6e86bac%22",
      "Yes": 5821,
      "No": 136
    },
    {
      "Chamber": "House",
      "Short Title":
          "Commonwealth Electoral Amendment (Lowering the Donation Disclosure Threshold) 2019",
      "Intro House": "2019-12-02",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6460",
      "id": "r6460",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 to: lower the political donation disclosure threshold from AUD 13,000 to AUD 1000; and remove the indexation of the disclosure threshold.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6460_first-reps/toc_word/19248b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6460_first-reps/toc_pdf/19248b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6460_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6460_ems_16c0e987-b0f8-4f29-b9af-65ddf8fb1900/upload_word/19248EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6460_ems_16c0e987-b0f8-4f29-b9af-65ddf8fb1900/upload_pdf/19248EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6460_ems_16c0e987-b0f8-4f29-b9af-65ddf8fb1900%22",
      "Yes": 4036,
      "No": 9589
    },
    {
      "Chamber": "House",
      "Short Title":
          "Commonwealth Electoral Amendment (Lowering Voting Age and Increasing Voter Participation) 2019",
      "Intro House": "2019-10-21",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6434",
      "id": "r6434",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 and Referendum (Machinery Provisions) Act 1984 to: lower the minimum (non-compulsory) voting age in Australian federal elections and referenda from 18 to 16 years; allow 14 and 15 year olds to be added to the electoral roll in preparation for their eligibility to vote at 16 years of age; provide for 16 and 17 year olds to be included in the certified list of voters (but not to be given a penalty notice if they do not vote); and provide that an eligible voter, who is not yet on the electoral roll or enrolled at their correct address, is able to cast a provisional vote on election day.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6434_first-reps/toc_word/19207b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6434_first-reps/toc_pdf/19207b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6434_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6434_ems_e220c421-f0c7-4604-9f98-7833cca1bd20/upload_word/19207EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6434_ems_e220c421-f0c7-4604-9f98-7833cca1bd20/upload_pdf/19207EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6434_ems_e220c421-f0c7-4604-9f98-7833cca1bd20%22",
      "Yes": 5873,
      "No": 514
    },
    {
      "Chamber": "House",
      "Short Title":
          "Commonwealth Electoral Amendment (Real Time Disclosure of Political Donations) 2019",
      "Intro House": "2019-09-16",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6403",
      "id": "r6403",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 to require political parties, state branches of political parties and political campaigners to provide a notice to the Australian Electoral Commission of political donations received over the disclosure threshold amount of AUD 13 800 within five business days of receiving the donation.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6403_first-reps/toc_word/19186b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6403_first-reps/toc_pdf/19186b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6403_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6403_ems_4226d0da-e07a-42c3-8ba8-fd06636cf80c/upload_word/19186EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6403_ems_4226d0da-e07a-42c3-8ba8-fd06636cf80c/upload_pdf/19186EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6403_ems_4226d0da-e07a-42c3-8ba8-fd06636cf80c%22",
      "Yes": 6434,
      "No": 7459
    },
    {
      "Chamber": "House",
      "Short Title": "Commonwealth Registers 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6469",
      "id": "r6469",
      "Summary":
          "Introduced with the Treasury Laws Amendment (Registries Modernisation and Other Measures) Bill 2019, Business Names Registration (Fees) Amendment (Registries Modernisation) Bill 2019, Corporations (Fees) Amendment (Registries Modernisation) Bill 2019 and National Consumer Credit Protection (Fees) Amendment (Registries Modernisation) Bill 2019 to create a new Commonwealth business registry regime, the bill: provides for the appointment, functions and powers of the registrar; and sets the framework for protecting and disclosing information held by the registrar.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6469_first-reps/toc_word/19240b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6469_first-reps/toc_pdf/19240b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6469_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6469_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_word/723538.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6469_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_pdf/723538.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6469_ems_e063b7ca-d61d-4993-a078-292990b204fc%22",
      "Yes": 7421,
      "No": 5290
    },
    {
      "Chamber": "House",
      "Short Title":
          "Constitution Alteration (Freedom of Expression and Freedom of the Press) 2019 [No. 2]",
      "Intro House": "2019-07-29",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6379",
      "id": "r6379",
      "Summary":
          "Subject to approval in accordance with section 128 of the Constitution, the bill proposes an alteration to the Constitution to provide that the Commonwealth, States and Territories must not limit freedom of expression, including freedom of the press and other media.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6379_first-reps/toc_word/19153b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6379_first-reps/toc_pdf/19153b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6379_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6379_ems_d9583e69-03be-457b-878c-041134e159df/upload_word/19153EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6379_ems_d9583e69-03be-457b-878c-041134e159df/upload_pdf/19153EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6379_ems_d9583e69-03be-457b-878c-041134e159df%22",
      "Yes": 5823,
      "No": 2898
    },
    {
      "Chamber": "House",
      "Short Title": "Constitution Alteration (Water Resources) 2019 [No. 2]",
      "Intro House": "2019-07-29",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6380",
      "id": "r6380",
      "Summary":
          "Subject to approval in accordance with section 128 of the Constitution, the bill proposes an alteration to the Constitution to: provide the Commonwealth with the power to make laws in relation to the use and management of water resources that extend beyond the limits of a state; and ensure that any Commonwealth law relating to water resources does not have an overall detrimental effect on the environment.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6380_first-reps/toc_word/19154b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6380_first-reps/toc_pdf/19154b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6380_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6380_ems_422cb3f5-8fb7-42e4-ab5b-3eabb68f89d0/upload_word/19154EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6380_ems_422cb3f5-8fb7-42e4-ab5b-3eabb68f89d0/upload_pdf/19154EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6380_ems_422cb3f5-8fb7-42e4-ab5b-3eabb68f89d0%22",
      "Yes": 8740,
      "No": 2520
    },
    {
      "Chamber": "House",
      "Short Title":
          "Corporations (Fees) Amendment (Registries Modernisation) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6467",
      "id": "r6467",
      "Summary":
          "Introduced with the Commonwealth Registers Bill 2019, Treasury Laws Amendment (Registries Modernisation and Other Measures) Bill 2019, Business Names Registration (Fees) Amendment (Registries Modernisation) Bill 2019 and National Consumer Credit Protection (Fees) Amendment (Registries Modernisation) Bill 2019 to create a new Commonwealth business registry regime, the bill amends the Corporations (Fees) Act 2001 to allow the registrar to collect fees related to the performance of registry functions or the exercise of a registry power.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6467_first-reps/toc_word/19238b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6467_first-reps/toc_pdf/19238b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6467_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6467_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_word/723538.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6467_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_pdf/723538.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6467_ems_e063b7ca-d61d-4993-a078-292990b204fc%22",
      "Yes": 9240,
      "No": 530
    },
    {
      "Chamber": "House",
      "Short Title":
          "Crimes Legislation Amendment (Age of Criminal Responsibility) 2019",
      "Intro House": "2019-10-14",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6421",
      "id": "r6421",
      "Summary":
          "Amends the Crimes Act 1914 and Criminal Code Act 1995 to increase the minimum age of criminal responsibility for Commonwealth offences from 10 years of age to 14 years of age.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6421_first-reps/toc_word/19197b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6421_first-reps/toc_pdf/19197b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6421_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6421_ems_74c9109b-0ebf-400e-b0d5-e4d780748396/upload_word/19197EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6421_ems_74c9109b-0ebf-400e-b0d5-e4d780748396/upload_pdf/19197EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6421_ems_74c9109b-0ebf-400e-b0d5-e4d780748396%22",
      "Yes": 2627,
      "No": 312
    },
    {
      "Chamber": "House",
      "Short Title":
          "Crimes Legislation Amendment (Sexual Crimes Against Children and Community Protection Measures) 2019",
      "Intro House": "2019-09-11",
      "Passed House": "2019-10-15",
      "Intro Senate": "2019-10-17",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6396",
      "id": "r6396",
      "Summary":
          "Amends the: Crimes Act 1914 to: insert community safety as a factor that can be taken into account to revoke the parole of a federal offender without notice; remove the requirement to seek leave before a recorded interview of a vulnerable witness can be admitted as evidence in chief; remove the requirement for vulnerable witnesses to be available to give evidence at committal proceedings; introduce mandatory minimum penalties for certain Commonwealth child sex offences and offenders; require a court to state and record the reasons for granting bail; insert a presumption against bail for certain Commonwealth child sex offenders; insert additional factors which must be taken into account when sentencing federal offenders; require the court to have regard to certain rehabilitation considerations when sentencing Commonwealth child sex offenders; insert presumptions in favour of cumulative sentences and actual terms of imprisonment for Commonwealth child sex offenders; impose certain requirements on Commonwealth child sex offenders under a recognizance release order; add \u2018residential treatment orders\u2019 as a sentencing alternative for intellectually disabled offenders; reduce the amount of \u2018clean street time\u2019 that can be credited against the outstanding sentence following commission of an offence by a person on parole and licence; require a period of time to be served in custody if a federal offender\u2019s parole order is revoked; and make amendments contingent on the commencement of the Combatting Child Sexual Exploitation Legislation Amendment Act 2019 and Counter-Terrorism Legislation Amendment (2019 Measures No. 1) Act 2019; Criminal Code Act 1995 to: clarify the scope of the definition of \u2018engage in sexual activity\u2019; insert a range of new aggravated offences for child sexual abuse; insert new offences relating to \u2018grooming\u2019 and the provision of electronic services to facilitate dealings with child abuse material online; increase the maximum penalties for certain Commonwealth child sex offences and breaches of reporting requirements; insert new additional factors for mandatory consideration at sentencing; and make amendments contingent on the commencement of the Combatting Child Sexual Exploitation Legislation Amendment Act 2019.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6396_first-reps/toc_word/19169b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6396_first-reps/toc_pdf/19169b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6396_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6396_ems_4639dbba-d525-434c-8e64-3146eeba7da9/upload_word/717035.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6396_ems_4639dbba-d525-434c-8e64-3146eeba7da9/upload_pdf/717035.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6396_ems_4639dbba-d525-434c-8e64-3146eeba7da9%22",
      "Yes": 4834,
      "No": 6505
    },
    {
      "Chamber": "House",
      "Short Title": "Currency (Restrictions on the Use of Cash) 2019",
      "Intro House": "2019-09-19",
      "Passed House": "2019-10-24",
      "Intro Senate": "2019-11-11",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6418",
      "id": "r6418",
      "Summary":
          "Introduces offences for entities that make or accept cash payments of AUD 10 000 or more.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6418_first-reps/toc_word/19189b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6418_first-reps/toc_pdf/19189b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6418_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6418_ems_dff7dc12-d3ac-47cf-bdfe-945e55c984f6/upload_word/717449.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6418_ems_dff7dc12-d3ac-47cf-bdfe-945e55c984f6/upload_pdf/717449.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6418_ems_dff7dc12-d3ac-47cf-bdfe-945e55c984f6%22",
      "Yes": 1862,
      "No": 3641
    },
    {
      "Chamber": "House",
      "Short Title":
          "Customs Amendment (Product Specific Rule Modernisation) 2019",
      "Intro House": "2019-09-12",
      "Passed House": "2019-10-24",
      "Intro Senate": "2019-11-11",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6391",
      "id": "r6391",
      "Summary":
          "Amends the Customs Act 1901 to streamline the way in which product specific rules of origin of the Australia-Chile Free Trade Agreement, Australia-New Zealand Closer Economic Relations Agreement, Australia-United States Free Trade Agreement, Korea-Australia Free Trade Agreement, Malaysia-Australia Free Trade Agreement and Thailand-Australia Free Trade Agreement are given effect domestically.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6391_first-reps/toc_word/19161b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6391_first-reps/toc_pdf/19161b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6391_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6391_ems_b8e0b396-373f-4395-8a9f-d3bc3373a1b4/upload_word/716881Clean.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6391_ems_b8e0b396-373f-4395-8a9f-d3bc3373a1b4/upload_pdf/716881Clean.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6391_ems_b8e0b396-373f-4395-8a9f-d3bc3373a1b4%22",
      "Yes": 9561,
      "No": 6522
    },
    {
      "Chamber": "House",
      "Short Title":
          "Defence Legislation Amendment (Miscellaneous Measures) 2020",
      "Intro House": "2020-02-13",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6485",
      "id": "r6485",
      "Summary":
          "Amends the: Defence Home Ownership Assistance Scheme Act 2008 to extend the period after a member leaves the Australian Defence Force (ADF) within which they can access the Defence Home Ownership Assistance Scheme, from two to five years; Australian Defence Force Superannuation Act 2015 to enable former ADF members, who have provided at least 12 months of service, to continue to make contributions to their ADF Super accounts; and Superannuation Industry (Supervision) Act 1993 to require ADF Super to obtain relevant insurance products for ADF Super members who are no longer serving in the ADF.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6485_first-reps/toc_word/20001b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6485_first-reps/toc_pdf/20001b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6485_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6485_ems_ec185e79-17a9-4fc4-8a9a-42316d4c07c6/upload_word/730393.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6485_ems_ec185e79-17a9-4fc4-8a9a-42316d4c07c6/upload_pdf/730393.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6485_ems_ec185e79-17a9-4fc4-8a9a-42316d4c07c6%22",
      "Yes": 582,
      "No": 9973
    },
    {
      "Chamber": "House",
      "Short Title":
          "Environment Protection and Biodiversity Conservation Amendment (Heritage Listing for the Bight) 2019",
      "Intro House": "2019-07-22",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6359",
      "id": "r6359",
      "Summary":
          "Amends the Environment Protection and Biodiversity Conservation Act 1999 to grant National Heritage status to the Great Australian Bight.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6359_first-reps/toc_word/19136b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6359_first-reps/toc_pdf/19136b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6359_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6359_ems_6a43e9a9-ffc3-4d55-aa71-26e6037b4151/upload_word/19136EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6359_ems_6a43e9a9-ffc3-4d55-aa71-26e6037b4151/upload_pdf/19136EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6359_ems_6a43e9a9-ffc3-4d55-aa71-26e6037b4151%22",
      "Yes": 526,
      "No": 3823
    },
    {
      "Chamber": "House",
      "Short Title": "Export Charges (Imposition Customs) Amendment 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "14",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6480",
      "id": "r6480",
      "Summary":
          "Introduced with the Export Charges (Imposition\u2014Excise) Amendment Bill 2019 and Export Charges (Imposition\u2014General) Amendment Bill 2019, the bill amends the Export Charges (Imposition\u2014Customs) Act,2015 to make amendments consequential on the enactment of the Export Control Bill 2019 and the proposed repeal of the Export Charges (Collection) Act 2015.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6480_first-reps/toc_word/19255b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6480_first-reps/toc_pdf/19255b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6480_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6480_ems_f508430e-71ff-42db-b160-4fdd5f359c20/upload_word/723934.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6480_ems_f508430e-71ff-42db-b160-4fdd5f359c20/upload_pdf/723934.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6480_ems_f508430e-71ff-42db-b160-4fdd5f359c20%22",
      "Yes": 3291,
      "No": 2327
    },
    {
      "Chamber": "House",
      "Short Title": "Export Charges (Imposition Excise) Amendment 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "15",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6479",
      "id": "r6479",
      "Summary":
          "Introduced with the Export Charges (Imposition\u2014Customs) Amendment Bill 2019 and Export Charges (Imposition\u2014General) Amendment Bill 2019, the bill amends the Export Charges (Imposition\u2014Excise) Act 2015 to make amendments consequential on the enactment of the Export Control Bill 2019 and the proposed repeal of the Export Charges (Collection) Act 2015.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6479_first-reps/toc_word/19254b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6479_first-reps/toc_pdf/19254b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6479_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6479_ems_f508430e-71ff-42db-b160-4fdd5f359c20/upload_word/723934.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6479_ems_f508430e-71ff-42db-b160-4fdd5f359c20/upload_pdf/723934.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6479_ems_f508430e-71ff-42db-b160-4fdd5f359c20%22",
      "Yes": 1104,
      "No": 2697
    },
    {
      "Chamber": "House",
      "Short Title": "Export Charges (Imposition General) Amendment 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "16",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6477",
      "id": "r6477",
      "Summary":
          "Introduced with the Export Charges (Imposition\u2014Customs) Amendment Bill 2019 and Export Charges (Imposition\u2014Excise) Amendment Bill 2019, the bill amends the Export Charges (Imposition\u2014General) Act 2015 to make amendments consequential on the enactment of the Export Control Bill 2019 and the proposed repeal of the Export Charges (Collection) Act 2015.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6477_first-reps/toc_word/19252b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6477_first-reps/toc_pdf/19252b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6477_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6477_ems_f508430e-71ff-42db-b160-4fdd5f359c20/upload_word/723934.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6477_ems_f508430e-71ff-42db-b160-4fdd5f359c20/upload_pdf/723934.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6477_ems_f508430e-71ff-42db-b160-4fdd5f359c20%22",
      "Yes": 7783,
      "No": 3087
    },
    {
      "Chamber": "House",
      "Short Title": "Export Control 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "12",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6481",
      "id": "r6481",
      "Summary":
          "Introduced with the Export Control (Consequential Amendments and Transitional Provisions) Bill 2019, the bill streamlines and consolidates existing legislation to create a new framework for regulating the export of goods, including agricultural products and food, from Australian territory.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6481_first-reps/toc_word/19256b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6481_first-reps/toc_pdf/19256b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6481_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6481_ems_0713f727-1deb-4300-8f2d-f5551a7ccd85/upload_word/723932.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6481_ems_0713f727-1deb-4300-8f2d-f5551a7ccd85/upload_pdf/723932.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6481_ems_0713f727-1deb-4300-8f2d-f5551a7ccd85%22",
      "Yes": 3251,
      "No": 2628
    },
    {
      "Chamber": "House",
      "Short Title":
          "Export Control (Consequential Amendments and Transitional Provisions) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "13",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6478",
      "id": "r6478",
      "Summary":
          "Introduced with the Export Control Bill 2019 to create a new framework for regulating the export of goods, including agricultural products and food, from Australian territory, the bill: repeals 19 Acts; makes consequential amendments to nine Acts; and provides for transitional arrangements.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6478_first-reps/toc_word/19253b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6478_first-reps/toc_pdf/19253b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6478_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6478_ems_38b9b705-65b0-4d3c-adf9-632820cff3d7/upload_word/723933.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6478_ems_38b9b705-65b0-4d3c-adf9-632820cff3d7/upload_pdf/723933.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6478_ems_38b9b705-65b0-4d3c-adf9-632820cff3d7%22",
      "Yes": 5577,
      "No": 5992
    },
    {
      "Chamber": "House",
      "Short Title": "Fair Work Amendment (Stop Work to Stop Warming) 2019",
      "Intro House": "2019-09-16",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6405",
      "id": "r6405",
      "Summary":
          "Amends the Fair Work Act 2009 to: introduce a new category of \u2018protected climate change industrial action\u2019 to provide workers with an express right to take such action; allow employees and employers to include matters relating to climate change in their enterprise agreements; and permit employees to take \u2018protected industrial action\u2019 being action taken in support of securing an enterprise agreement, about such matters.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6405_first-reps/toc_word/19185b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6405_first-reps/toc_pdf/19185b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6405_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6405_ems_ef4fb57f-4eea-42ec-88ae-bd3a57f8953b/upload_word/19185EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6405_ems_ef4fb57f-4eea-42ec-88ae-bd3a57f8953b/upload_pdf/19185EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6405_ems_ef4fb57f-4eea-42ec-88ae-bd3a57f8953b%22",
      "Yes": 7943,
      "No": 72
    },
    {
      "Chamber": "House",
      "Short Title":
          "Fair Work Laws Amendment (Proper Use of Worker Benefits) 2019",
      "Intro House": "2019-07-04",
      "Passed House": "2019-09-10",
      "Intro Senate": "2019-09-11",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6347",
      "id": "r6347",
      "Summary":
          "Amends the: Fair Work Act 2009 to: prohibit terms of a modern award or an enterprise agreement requiring or permitting contributions for the benefit of an employee to be made to any fund other than a superannuation fund, a registered worker entitlement fund or a registered charity; require any term of a modern award or enterprise agreement that names a worker entitlement fund or insurance product to provide for an employee to choose another fund or insurance product; prohibit any term of a modern award, enterprise agreement or contract of employment permitting or requiring employee contributions to an election fund for an industrial association; and prohibit any action with the intent to coerce an employer to pay amounts to a particular worker entitlement fund, superannuation fund, training fund, welfare fund or employee insurance scheme; Fair Work (Registered Organisations) Act 2009 to: require registered organisations to have written financial management policies that have been approved by the committee of management; require registered organisations to report certain loans, grants and donations; require specific disclosure by registered organisations of the financial benefits obtained by them and persons linked to them in connection with employee insurance products, welfare fund arrangements and training fund arrangements; introduce a range of new penalties relating to compliance by registered organisations with financial management, disclosure and reporting requirements; and make minor technical amendments; and Fringe Benefits Tax Assessment Act 1986, Income Tax Assessment Act 1997 and Taxation Administration Act 1953 to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6347_first-reps/toc_word/19112b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6347_first-reps/toc_pdf/19112b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6347_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6347_ems_79e58577-9021-42ec-a63d-4a05edd1fd1c/upload_word/711371.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6347_ems_79e58577-9021-42ec-a63d-4a05edd1fd1c/upload_pdf/711371.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6347_ems_79e58577-9021-42ec-a63d-4a05edd1fd1c%22",
      "Yes": 8154,
      "No": 2340
    },
    {
      "Chamber": "House",
      "Short Title":
          "Fair Work (Registered Organisations) Amendment (Ensuring Integrity No. 2) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2019-12-05",
      "Intro Senate": "2019-12-05",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6482",
      "id": "r6482",
      "Summary":
          "Amends the Fair Work (Registered Organisations) Act 2009 to: include certain serious criminal offences as a new category of 'prescribed offence' for the purposes of the automatic disqualification regime for registered organisations; establish an offence for a disqualified person to continue to act as an official or in a way that influences the affairs of an organisation; allow the Federal Court to disqualify officials from holding office in certain circumstances or if they are otherwise not a fit and proper person; allow the Federal Court to cancel the registration of an organisation and make alternative orders on a range of grounds; expand the grounds on which the Federal Court may order remedial action to deal with governance issues in an organisation; expressly provide that the Federal Court may appoint an administrator to an organisation or part of an organisation as part of a remedial scheme; introduce a public interest test for amalgamations of registered organisations where the Fair Work Commissioner has determined the test should apply; provide that the commissioner must prioritise matters that raise serious or systemic concerns in carrying out his or her functions; provide that the minister must cause an independent review of the amendments made by the bill as soon as practicable after the end of two years after the amendments commence; and make minor and technical amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6482_first-reps/toc_word/19258b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6482_first-reps/toc_pdf/19258b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6482_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6482_ems_bd86fac7-06d9-409e-b224-f4c8809829e9/upload_word/723987.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6482_ems_bd86fac7-06d9-409e-b224-f4c8809829e9/upload_pdf/723987.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6482_ems_bd86fac7-06d9-409e-b224-f4c8809829e9%22",
      "Yes": 8233,
      "No": 1905
    },
    {
      "Chamber": "House",
      "Short Title":
          "Family Assistance Legislation Amendment (Improving Assistance for Vulnerable and Disadvantaged Families) 2020",
      "Intro House": "2020-02-26",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6504",
      "id": "r6504",
      "Summary":
          "Amends the: A New Tax System (Family Assistance) Act 1999 and A New Tax System (Family Assistance) (Administration) Act 1999 to specify that a provider is eligible for Additional Child Care Subsidy (ACCS) (child wellbeing) in respect of certain prescribed classes of children, such as foster children; A New Tax System (Family Assistance) Act 1999 to extend the backdating of ACCS (child wellbeing) certificates and determinations from the current period of 28 days to up to 13 weeks in prescribed exceptional circumstances; extend the period from 13 weeks to up to 12 months in which an ACCS (wellbeing) determination can be made for certain prescribed classes of children, such as children on a long term child protection order, including those in foster care; and A New Tax System (Family Assistance) (Administration) Act 1999 to: correct minor technical drafting errors; and modify how child care subsidy (CCS) entitlements are reviewed when an individual, who is a member of a couple for some but not all of the CCS fortnights in an income year, meets the CCS reconciliation conditions.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6504_first-reps/toc_word/20021b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6504_first-reps/toc_pdf/20021b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6504_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6504_ems_98826267-affe-48ed-8e39-444a5275ec4d/upload_word/732367.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6504_ems_98826267-affe-48ed-8e39-444a5275ec4d/upload_pdf/732367.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6504_ems_98826267-affe-48ed-8e39-444a5275ec4d%22",
      "Yes": 4660,
      "No": 4404
    },
    {
      "Chamber": "House",
      "Short Title":
          "Family Law Amendment (Western Australia De Facto Superannuation Splitting and Bankruptcy) 2019",
      "Intro House": "2019-11-27",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6454",
      "id": "r6454",
      "Summary":
          "Amends: the Family Law Act 1975 and Bankruptcy Act 1966 to: give effect to a referral of power from Western Australia to the Commonwealth in respect of superannuation matters in family law proceedings for separating de facto couples in Western Australia; extend federal bankruptcy jurisdiction to the Family Court of Western Australia to hear bankruptcy proceedings concurrently with family law proceedings; and provide for transitional arrangements; and 21 Acts to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6454_first-reps/toc_word/19227b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6454_first-reps/toc_pdf/19227b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6454_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6454_ems_4cb94a2f-9a59-43ba-8bfa-b5958f3d66c5/upload_word/722944.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6454_ems_4cb94a2f-9a59-43ba-8bfa-b5958f3d66c5/upload_pdf/722944.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6454_ems_4cb94a2f-9a59-43ba-8bfa-b5958f3d66c5%22",
      "Yes": 7292,
      "No": 5536
    },
    {
      "Chamber": "House",
      "Short Title":
          "Farm Household Support Amendment (Relief Measures) (No. 1) 2020",
      "Intro House": "2020-02-13",
      "Passed House": "2020-02-26",
      "Intro Senate": "2020-02-26",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6493",
      "id": "r6493",
      "Summary":
          "Amends the Farm Household Support Act 2014 to: remove the use of business income reconciliation for the purposes of determining a person\u2019s rate of farm household allowance; and remove the 28 day time limit for conducting a farm financial assessment.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6493_first-reps/toc_word/20007b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6493_first-reps/toc_pdf/20007b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6493_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6493_ems_4f8d9a64-4f71-4331-941c-6a0d0e667c59/upload_word/731165.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6493_ems_4f8d9a64-4f71-4331-941c-6a0d0e667c59/upload_pdf/731165.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6493_ems_4f8d9a64-4f71-4331-941c-6a0d0e667c59%22",
      "Yes": 1543,
      "No": 8305
    },
    {
      "Chamber": "House",
      "Short Title": "Federal Circuit and Family Court of Australia 2019",
      "Intro House": "2019-12-05",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6475",
      "id": "r6475",
      "Summary":
          "Introduced with the Federal Circuit and Family Court of Australia (Consequential Amendments and Transitional Provisions) Bill 2019, the bill unifies the administrative structure of the Family Court of Australia and the Federal Circuit Court of Australia to create the Federal Circuit and Family Court of Australia, comprised of Division 1 (which will be a continuation of the Family Court) and Division 2 (which will be a continuation of the Federal Circuit Court).",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6475_first-reps/toc_word/19250b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6475_first-reps/toc_pdf/19250b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6475_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6475_ems_e0f4b252-ccb7-4771-848a-0b748d053514/upload_word/723581.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6475_ems_e0f4b252-ccb7-4771-848a-0b748d053514/upload_pdf/723581.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6475_ems_e0f4b252-ccb7-4771-848a-0b748d053514%22",
      "Yes": 967,
      "No": 7454
    },
    {
      "Chamber": "House",
      "Short Title":
          "Federal Circuit and Family Court of Australia (Consequential Amendments and Transitional Provisions) 2019",
      "Intro House": "2019-12-05",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6474",
      "id": "r6474",
      "Summary":
          "Introduced with the Federal Circuit and Family Court of Australia Bill 2019, the bill amends: the Family Law Act,1975 and Federal Court of Australia Act 1976 to make consequential amendments to align these Acts with the operation of the newly created Federal Circuit and Family Court (FCFC); the proposed Federal Circuit and Family Court of Australia Act 2019 to make an amendment consequential on the commencement of certain changes enacted by the Public Sector Superannuation Legislation Amendment Act 2018; five Acts in relation to making rules of court; 132 Acts to make further consequential amendments; and various Acts to make amendments contingent on the commencement of nine Acts. Also provides for transitional arrangements in relation to the judges and personnel of the FCFC, court administration and appeals; and repeals the Federal Circuit Court of Australia Act 1999.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6474_first-reps/toc_word/19249b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6474_first-reps/toc_pdf/19249b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6474_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6474_ems_9d514c22-4ed2-4838-8175-917faf4057f9/upload_word/723582.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6474_ems_9d514c22-4ed2-4838-8175-917faf4057f9/upload_pdf/723582.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6474_ems_9d514c22-4ed2-4838-8175-917faf4057f9%22",
      "Yes": 2333,
      "No": 1612
    },
    {
      "Chamber": "House",
      "Short Title":
          "Financial Sector Reform (Hayne Royal Commission Response Protecting Consumers (2019 Measures)) 2019",
      "Intro House": "2019-11-28",
      "Passed House": "2020-02-05",
      "Intro Senate": "2020-02-05",
      "Passed Senate": "2020-02-06",
      "Assent Date": "2020-02-17",
      "Act No.": "2",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6453",
      "id": "r6453",
      "Summary":
          "Gives effect to certain recommendations of the Financial Services Royal Commission by amending the: Australian Securities and Investments Commission Act 2001 (ASIC Act) and Insurance Contracts Act 1984 (IC Act) to enable the unfair contract terms regime under the ASIC Act to apply to insurance contracts covered by the IC Act; ASIC Act and Corporations Act 2001 to specify that the consumer protection provisions of the ASIC Act apply to funeral expenses policies; National Consumer Credit Protection Act 2009 and National Consumer Credit Protection (Transitional and Consequential Provisions) Act 2009 to: require mortgage brokers to act in the best interests of consumers and give priority to consumers in certain circumstances where there is a conflict of interest; provide that mortgage brokers and mortgage intermediaries must not accept conflicted remuneration; prohibit employers, credit providers and mortgage intermediaries from giving conflicted remuneration to mortgage brokers or mortgage intermediaries; and enable the circumstances in which the prohibition on conflicted remuneration applies to be prescribed by regulation; and National Consumer Credit Protection Act,2009 to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6453_first-reps/toc_word/19226b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6453_first-reps/toc_pdf/19226b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6453_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6453_ems_51ac3247-a9e9-45f5-a606-4b005cdc0b3d/upload_word/722781.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6453_ems_51ac3247-a9e9-45f5-a606-4b005cdc0b3d/upload_pdf/722781.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6453_ems_51ac3247-a9e9-45f5-a606-4b005cdc0b3d%22",
      "Yes": 4427,
      "No": 2991
    },
    {
      "Chamber": "House",
      "Short Title":
          "Financial Sector Reform (Hayne Royal Commission Response Stronger Regulators (2019 Measures)) 2019",
      "Intro House": "2019-11-28",
      "Passed House": "2020-02-05",
      "Intro Senate": "2020-02-05",
      "Passed Senate": "2020-02-06",
      "Assent Date": "2020-02-17",
      "Act No.": "3",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6456",
      "id": "r6456",
      "Summary":
          "Gives effect to certain recommendations of the Financial Services Royal Commission by amending the: Australian Securities and Investments Commission Act 2001 (ASIC Act) and National Consumer Credit Protection Act 2009 to: relocate the existing search warrant powers of the Australian and Securities Investment Commission (ASIC) from across ASIC administered legislation into the ASIC Act; and enhance ASIC's existing search warrant powers by reference to the search warrant powers in the Crimes Act 1914; Telecommunications (Interception and Access) Act 1979 to allow ASIC to receive and use interception information for its own investigations and prosecutions of serious offences; Corporations Act 2001 to replace the requirement for obtaining an Australian financial services licence (AFS licence) that a person be of 'good fame and character' with the requirement that they be a 'fit and proper person'; National Consumer Credit Protection Act 2009 and National Consumer Credit Protection (Transitional and Consequential Provisions) Act 2009 to: enable ASIC to cancel an AFS licence if the licensee does not start to provide the relevant financial services within six months after the licence is granted; clarify ASIC's power to suspend or cancel an Australian credit licence if the person does not engage, or ceases to engage, in credit activities; require licensees to notify ASIC if they do not start to provide the financial services or engage in the credit activities covered by the licence within six months of it being granted; Corporations Act 2001 and National Consumer Credit Protection Act 2009 to strengthen and broadly align provisions relating to false or misleading statements; and Corporations Act 2001, National Consumer Credit Protection Act 2009 and National Consumer Credit Protection (Transitional and Consequential Provisions) Act 2009 to: expand the grounds on which ASIC can make a banning order against a person; and enable ASIC to make additional types of banning orders to prohibit a person from controlling or performing any or particular functions in relation to a financial services or credit business. Also amends seven Acts to make consequential amendments and provide for transitional arrangements.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6456_first-reps/toc_word/19229b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6456_first-reps/toc_pdf/19229b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6456_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6456_ems_b1fcdeff-4e63-4108-8b15-535c8c5d173e/upload_word/722782.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6456_ems_b1fcdeff-4e63-4108-8b15-535c8c5d173e/upload_pdf/722782.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6456_ems_b1fcdeff-4e63-4108-8b15-535c8c5d173e%22",
      "Yes": 5178,
      "No": 3921
    },
    {
      "Chamber": "House",
      "Short Title":
          "Foreign Acquisitions and Takeovers Amendment (Strategic Assets) 2020",
      "Intro House": "2020-02-24",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6503",
      "id": "r6503",
      "Summary":
          "Amends the Foreign Acquisitions and Takeovers Act 1975 to: prevent foreign persons or entities from acquiring more than 10 per cent or greater interest in Australian land, water or other assets that are of 'strategic economic importance' or 'strategic defensive importance' to Australia; and establish the Foreign Ownership Assessment Board.",
      "Sponsor": "KATTER,Bob,Jnr,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6503_first-reps/toc_word/20020b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6503_first-reps/toc_pdf/20020b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6503_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6503_ems_2e302f6c-098e-4bd8-bdee-fc5d67d02cc6/upload_word/20020EMKatter.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6503_ems_2e302f6c-098e-4bd8-bdee-fc5d67d02cc6/upload_pdf/20020EMKatter.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6503_ems_2e302f6c-098e-4bd8-bdee-fc5d67d02cc6%22",
      "Yes": 9503,
      "No": 5555
    },
    {
      "Chamber": "House",
      "Short Title":
          "Health Insurance Amendment (General Practitioners and Quality Assurance) 2020",
      "Intro House": "2020-02-27",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6505",
      "id": "r6505",
      "Summary":
          "Amends the Health Insurance Act 1973 to: simplify administrative processes for recognition as a specialist general practitioner (GP) for Medicare purposes; align Medicare eligibility for GPs with the National Registration and Accreditation Scheme registration requirements; and replace references to repealed legislation in relation to the definition of a quality assurance activity under the Qualified Privilege Scheme. Also repeals the Health Practitioner Regulation (Consequential Amendments) Act 2010.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6505_first-reps/toc_word/20022b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6505_first-reps/toc_pdf/20022b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6505_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6505_ems_3eac2a60-e04f-4673-9ea5-e0768a2c7a07/upload_word/732317.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6505_ems_3eac2a60-e04f-4673-9ea5-e0768a2c7a07/upload_pdf/732317.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6505_ems_3eac2a60-e04f-4673-9ea5-e0768a2c7a07%22",
      "Yes": 4900,
      "No": 9087
    },
    {
      "Chamber": "House",
      "Short Title":
          "Higher Education Support (HELP Tuition Protection Levy) 2019",
      "Intro House": "2019-09-18",
      "Passed House": "2019-10-24",
      "Intro Senate": "",
      "Passed Senate": "2019-02-05",
      "Assent Date": "2019-02-17",
      "Act No.": "4",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6417",
      "id": "r6417",
      "Summary":
          "Part of a package of three bills to implement a tuition protection model for students participating in the VET Student Loans program and for higher education students accessing FEE-HELP or HECS-HELP assistance at a private education provider or TAFE, the bill imposes the HELP tuition protection levy, specifies the amounts that are payable by providers, and prescribes the levy components and the manner in which, and by whom, they will be determined each year.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6417_first-reps/toc_word/19184b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6417_first-reps/toc_pdf/19184b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6417_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6417_ems_67840204-2b60-4136-ad6b-ba02eb1c1987/upload_word/717396.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6417_ems_67840204-2b60-4136-ad6b-ba02eb1c1987/upload_pdf/717396.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6417_ems_67840204-2b60-4136-ad6b-ba02eb1c1987%22",
      "Yes": 9596,
      "No": 5269
    },
    {
      "Chamber": "House",
      "Short Title": "Identity-matching Services 2019",
      "Intro House": "2019-07-31",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6387",
      "id": "r6387",
      "Summary":
          "Pursuant to the objectives of the Intergovernmental Agreement on Identity Matching Services (IGA), agreed by COAG on 5 October 2017, the bill provides for the exchange of identity information between the Commonwealth, state and territory governments by enabling the Department of Home Affairs to collect, use and disclose identification information in order to operate the technical systems that will facilitate the identity-matching services envisaged by the IGA.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6387_first-reps/toc_word/19156b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6387_first-reps/toc_pdf/19156b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6387_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6387_ems_f8e7bb62-e2bd-420b-8597-8881422b4b8f/upload_word/713695.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6387_ems_f8e7bb62-e2bd-420b-8597-8881422b4b8f/upload_pdf/713695.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6387_ems_f8e7bb62-e2bd-420b-8597-8881422b4b8f%22",
      "Yes": 2084,
      "No": 889
    },
    {
      "Chamber": "House",
      "Short Title":
          "Liability for Climate Change Damage (Make the Polluters Pay) 2020",
      "Intro House": "2020-02-24",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6489",
      "id": "r6489",
      "Summary":
          "Provides that fossil fuel companies are liable for climate change damage in proportion to their greenhouse gas emissions; and enables certain persons, including those impacted by climate change, to bring legal actions against major greenhouse gas emitters for damage caused by climate change.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6489_first-reps/toc_word/20018b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6489_first-reps/toc_pdf/20018b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6489_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6489_ems_3163d0cd-2e7e-427e-b261-e32acc0b4eb6/upload_word/20018EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6489_ems_3163d0cd-2e7e-427e-b261-e32acc0b4eb6/upload_pdf/20018EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6489_ems_3163d0cd-2e7e-427e-b261-e32acc0b4eb6%22",
      "Yes": 9465,
      "No": 3307
    },
    {
      "Chamber": "House",
      "Short Title": "Live Animal Export Prohibition (Ending Cruelty) 2019",
      "Intro House": "2019-12-02",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6462",
      "id": "r6462",
      "Summary":
          "Amends the Australian Meat and Livestock Industry Act 1997 and Export Control Act 1982 to: permanently ban from 1 July 2022 the export of live animals for slaughter; and establish interim requirements to ensure that animals are treated humanely after being exported.",
      "Sponsor": "WILKIE,Andrew,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6462_first-reps/toc_word/19246b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6462_first-reps/toc_pdf/19246b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6462_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6462_ems_24b606d2-9103-4d7d-b4c5-a19a45d388b4/upload_word/19246EMWilkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6462_ems_24b606d2-9103-4d7d-b4c5-a19a45d388b4/upload_pdf/19246EMWilkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6462_ems_24b606d2-9103-4d7d-b4c5-a19a45d388b4%22",
      "Yes": 9776,
      "No": 8063
    },
    {
      "Chamber": "House",
      "Short Title": "Live Sheep Long Haul Export Prohibition 2019",
      "Intro House": "2019-07-22",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6360",
      "id": "r6360",
      "Summary":
          "Amends the Australian Meat and Live-stock Industry Act 1997 and Export Control Act 1982 to restrict the long haul export of live sheep and lambs during the northern hemisphere summer months of June, July, August or September in a five year transitional period, or at any time after that period, where the voyage is by ship and of duration exceeding 10 days, and where a place in that voyage is either the Persian Gulf or the Red Sea (regardless of whether it is the final destination).",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6360_first-reps/toc_word/19137b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6360_first-reps/toc_pdf/19137b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6360_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6360_ems_c018d1b6-0062-48c1-b1a4-aa5439f705c3/upload_word/19137EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6360_ems_c018d1b6-0062-48c1-b1a4-aa5439f705c3/upload_pdf/19137EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6360_ems_c018d1b6-0062-48c1-b1a4-aa5439f705c3%22",
      "Yes": 9942,
      "No": 4000
    },
    {
      "Chamber": "House",
      "Short Title":
          "Migration Agents Registration Application Charge Amendment (Rates of Charge) 2019",
      "Intro House": "2019-11-27",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6446",
      "id": "r6446",
      "Summary":
          "Amends the Migration Agents Registration Application Charge Act 1997 to provide that a person who paid the non-commercial application charge in relation to their current period of registration, but gives immigration assistance otherwise than on a non-commercial basis, is liable to pay an adjusted charge.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6446_first-reps/toc_word/19217b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6446_first-reps/toc_pdf/19217b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6446_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6446_ems_253afc4f-5dab-4468-bc1f-1c471db7a2f5/upload_word/722996.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6446_ems_253afc4f-5dab-4468-bc1f-1c471db7a2f5/upload_pdf/722996.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6446_ems_253afc4f-5dab-4468-bc1f-1c471db7a2f5%22",
      "Yes": 5083,
      "No": 9542
    },
    {
      "Chamber": "House",
      "Short Title":
          "Migration Amendment (Regulation of Migration Agents) 2019",
      "Intro House": "2019-11-27",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6448",
      "id": "r6448",
      "Summary":
          "Amends the Migration Act 1958 to: remove unrestricted legal practitioners from the regulatory scheme that governs migration agents; allow eligible restricted legal practitioners to be both registered migration agents and restricted legal practitioners for a period of up to two years; enable the time period in which a person can be considered an applicant for repeat registration as a migration agent to be specified in delegated legislation; remove the 12-month time limit within which a person must apply for registration following completion of a prescribed course; clarify that the powers under Part 3 of the Act are exercisable by the minister; enable the Migration Agents Registration Authority (MARA) to refuse an application to become a registered migration agent where an applicant has failed to provide information or answer questions in relation to their application; require registered migration agents to notify MARA if they have paid the non-commercial application charge for their current period of registration but give immigration assistance otherwise than on a non-commercial basis; and provide that the definitions of 'immigration assistance' and 'makes immigration representations' include assisting a person in relation to a request to the minister to exercise his or her power under the Act to revoke a character-related visa refusal or cancellation decision.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6448_first-reps/toc_word/19216b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6448_first-reps/toc_pdf/19216b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6448_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6448_ems_55d9f7be-a106-4e9f-8876-52a6bff1d4f4/upload_word/722995.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6448_ems_55d9f7be-a106-4e9f-8876-52a6bff1d4f4/upload_pdf/722995.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6448_ems_55d9f7be-a106-4e9f-8876-52a6bff1d4f4%22",
      "Yes": 4904,
      "No": 800
    },
    {
      "Chamber": "House",
      "Short Title": "Migration Amendment (Streamlining Visa Processing) 2019",
      "Intro House": "2019-07-04",
      "Passed House": "2019-09-11",
      "Intro Senate": "2019-09-11",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6352",
      "id": "r6352",
      "Summary":
          "Amends the Migration Act 1958 to: enable the minister to specify groups of applicants who are required to provide one or more personal identifiers to have a valid visa application; render a visa application invalid if the applicant is required to provide one or more personal identifiers but does not provide them; and enable personal identifiers to be provided either by way of an identification test, or by another way specified by the minister.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6352_first-reps/toc_word/19116b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6352_first-reps/toc_pdf/19116b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6352_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6352_ems_6c5ae527-a454-499f-b97f-9d093effea86/upload_word/711404.doc;fileType=application%2Fmsword",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6352_ems_6c5ae527-a454-499f-b97f-9d093effea86/upload_pdf/711404.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6352_ems_6c5ae527-a454-499f-b97f-9d093effea86%22",
      "Yes": 596,
      "No": 6913
    },
    {
      "Chamber": "House",
      "Short Title":
          "Migration Amendment (Strengthening the Character Test) 2019",
      "Intro House": "2019-07-04",
      "Passed House": "2019-09-19",
      "Intro Senate": "2019-09-19",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6349",
      "id": "r6349",
      "Summary":
          "Amends the Migration Act 1958 to: amend the character test by providing grounds to consider visa cancellation or refusal where a non-citizen has been convicted of offences involving violence against a person, weapons, breaching of an apprehended violence order (or similar) or non-consensual sexual acts; and make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6349_first-reps/toc_word/19110b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6349_first-reps/toc_pdf/19110b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6349_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6349_ems_6380119e-0502-4146-9ce4-029421d5ac61/upload_word/711406.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6349_ems_6380119e-0502-4146-9ce4-029421d5ac61/upload_pdf/711406.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6349_ems_6380119e-0502-4146-9ce4-029421d5ac61%22",
      "Yes": 397,
      "No": 6795
    },
    {
      "Chamber": "House",
      "Short Title":
          "Migration Legislation Amendment (Regional Processing Cohort) 2019",
      "Intro House": "2019-07-04",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6344",
      "id": "r6344",
      "Summary":
          "Amends the Migration Act 1958 and Migration Regulations 1994 to: prevent unauthorised maritime arrivals or transitory persons (referred to as members of the designated regional processing cohort) who were at least 18 years of age and were taken to a regional processing country after 19 July 2013 from making a valid application for an Australian visa; enable the minister to permit a member of the designated regional processing cohort, or a class of persons within the designated regional processing cohort, to make a valid application for a visa if the minister thinks it is in the public interest to do so; and prevent a member of the designated regional processing cohort from being deemed to have been granted a special purpose visa or being deemed to have applied for particular visas under the Migration Regulations 1994.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6344_first-reps/toc_word/19107b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6344_first-reps/toc_pdf/19107b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6344_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6344_ems_999b068c-ee6c-43dc-85f2-19b787efe9ac/upload_word/711193.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6344_ems_999b068c-ee6c-43dc-85f2-19b787efe9ac/upload_pdf/711193.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6344_ems_999b068c-ee6c-43dc-85f2-19b787efe9ac%22",
      "Yes": 1686,
      "No": 7184
    },
    {
      "Chamber": "House",
      "Short Title":
          "National Consumer Credit Protection Amendment (Mandatory Credit Reporting and Other Measures) 2019",
      "Intro House": "2019-12-05",
      "Passed House": "2020-02-05",
      "Intro Senate": "2020-02-05",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6476",
      "id": "r6476",
      "Summary":
          "Amends the: National Consumer Credit Protection Act 2009 to: establish a mandatory comprehensive credit reporting regime to apply from 1 April 2020; provide that a credit provider cannot refuse to provide further credit or reduce a customer's credit limit merely because financial hardship information exists; and provide for transitional arrangements; and Privacy Act 1988 to: permit reporting of financial hardship information within the credit reporting system; require the Attorney-General to cause an independent review and report of the credit reporting system before 1 October 2023; and make a number of minor amendments relating to the administration of credit reporting.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6476_first-reps/toc_word/19251b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6476_first-reps/toc_pdf/19251b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6476_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6476_ems_a8a35448-9c4c-4a56-b390-e9a1e03f1886/upload_word/723653.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6476_ems_a8a35448-9c4c-4a56-b390-e9a1e03f1886/upload_pdf/723653.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6476_ems_a8a35448-9c4c-4a56-b390-e9a1e03f1886%22",
      "Yes": 3873,
      "No": 437
    },
    {
      "Chamber": "House",
      "Short Title":
          "National Consumer Credit Protection Amendment (Small Amount Credit Contract and Consumer Lease Reforms) 2019",
      "Intro House": "2019-09-16",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6406",
      "id": "r6406",
      "Summary":
          "Amends the National Consumer Credit Protection Act 2009 to: impose a cap on the total payments that can be made under a consumer lease (known as rent-to-buy schemes); require small amount credit contracts (SACCs) (known as payday loans) to have equal repayment and payment intervals; remove the ability for SACC providers to charge monthly fees in respect of the residual term of a loan where a consumer fully repays the loan early; prevent lessors and credit assistance providers from undertaking door-to-door selling of leases at residential homes; introduce anti-avoidance protections; and increase penalties.",
      "Sponsor": "SHARKIE,Rebekha,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6406_first-reps/toc_word/19188b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6406_first-reps/toc_pdf/19188b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6406_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6406_ems_38ff1fd3-d878-499a-a7c4-3d709cf41923/upload_word/19188EMSharkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6406_ems_38ff1fd3-d878-499a-a7c4-3d709cf41923/upload_pdf/19188EMSharkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6406_ems_38ff1fd3-d878-499a-a7c4-3d709cf41923%22",
      "Yes": 4057,
      "No": 4904
    },
    {
      "Chamber": "House",
      "Short Title":
          "National Consumer Credit Protection (Fees) Amendment (Registries Modernisation) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6470",
      "id": "r6470",
      "Summary":
          "Introduced with the Commonwealth Registers Bill 2019, Treasury Laws Amendment (Registries Modernisation and Other Measures) Bill 2019, Business Names Registration (Fees) Amendment (Registries Modernisation) Bill 2019 and Corporations (Fees) Amendment (Registries Modernisation) Bill 2019 to create a new Commonwealth business registry regime, the bill amends the National Consumer Credit Protection (Fees) Act,2009 to allow the registrar to collect fees related to the performance of registry functions or the exercise of a registry power.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6470_first-reps/toc_word/19241b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6470_first-reps/toc_pdf/19241b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6470_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6470_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_word/723538.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6470_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_pdf/723538.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6470_ems_e063b7ca-d61d-4993-a078-292990b204fc%22",
      "Yes": 3424,
      "No": 301
    },
    {
      "Chamber": "House",
      "Short Title":
          "National Greenhouse and Energy Reporting Amendment (Transparency in Carbon Emissions Accounting) 2020",
      "Intro House": "2020-02-24",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6490",
      "id": "r6490",
      "Summary":
          "Amends the National Greenhouse and Energy Reporting Act 2007 to: amend the reporting requirements of greenhouse gas emissions to include scope 3 emissions (which are indirect greenhouse gas emissions arising as a consequence of the activities of a facility); and require the minister to table Australia's national greenhouse gas inventory estimates in Parliament every 3 months.",
      "Sponsor": "WILKIE,Andrew,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6490_first-reps/toc_word/20017b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6490_first-reps/toc_pdf/20017b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6490_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6490_ems_77658f3e-2f3c-4fe5-b56c-c34948525c6f/upload_word/20017EMWilkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6490_ems_77658f3e-2f3c-4fe5-b56c-c34948525c6f/upload_pdf/20017EMWilkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6490_ems_77658f3e-2f3c-4fe5-b56c-c34948525c6f%22",
      "Yes": 5934,
      "No": 995
    },
    {
      "Chamber": "House",
      "Short Title": "National Integrity Commission 2019",
      "Intro House": "2019-09-09",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6389",
      "id": "r6389",
      "Summary":
          "The bill: establishes the Australian National Integrity Commission as an independent public sector anti-corruption commission for the Commonwealth; provides for the appointment, functions and powers of the National Integrity Commissioner and commissioners; and makes consequential amendments to the Law Enforcement Integrity Commissioner Act 2006, Ombudsman Act 1976 and Public Interest Disclosure Act 2013.",
      "Sponsor": "BANDT,Adam,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6389_first-reps/toc_word/19159b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6389_first-reps/toc_pdf/19159b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6389_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6389_ems_158f60ae-6735-426f-ab2b-eb22bce0bb47/upload_word/19159EMBandt.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6389_ems_158f60ae-6735-426f-ab2b-eb22bce0bb47/upload_pdf/19159EMBandt.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6389_ems_158f60ae-6735-426f-ab2b-eb22bce0bb47%22",
      "Yes": 2365,
      "No": 1916
    },
    {
      "Chamber": "House",
      "Short Title":
          "National Radioactive Waste Management Amendment (Site Specification, Community Fund and Other Measures) 2020",
      "Intro House": "2020-02-13",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6500",
      "id": "r6500",
      "Summary":
          "Establishes a National Radioactive Waste Management Facility to permanently dispose of low level radioactive waste and temporarily store intermediate level radioactive waste by amending the National Radioactive Waste Management Act 2012 to: specify the site selected and enable the acquisition of additional land for the facility; abolish the National Repository Capital Contribution Fund and establish a Community Fund to provide economic and social sustainability for the community in which the facility will be located; and provide clear and objective links between the operation of the Act and the relevant Constitutional heads of power.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6500_first-reps/toc_word/20015b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6500_first-reps/toc_pdf/20015b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6500_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6500_ems_c08f76e7-da8f-49f5-8981-25825f9ced5f/upload_word/731164.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6500_ems_c08f76e7-da8f-49f5-8981-25825f9ced5f/upload_pdf/731164.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6500_ems_c08f76e7-da8f-49f5-8981-25825f9ced5f%22",
      "Yes": 2855,
      "No": 8791
    },
    {
      "Chamber": "House",
      "Short Title":
          "National Vocational Education and Training Regulator Amendment (Governance and Other Matters) 2020",
      "Intro House": "2020-02-13",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6497",
      "id": "r6497",
      "Summary":
          "Amends the National Vocational Education and Training Regulator Act 2011 to: amend the governance structure of the National Vocational Education and Training Regulator by replacing the existing Chief Commissioner/Chief Executive Officer and two commissioners with a single independent statutory office holder; establish the National Vocational Education and Training Regulator Advisory Council; include information sharing arrangements that support the use of data collected by the National Centre for Vocational Education Research; and make amendments contingent on the commencement of the National Vocational Education and Training Regulator Amendment Act 2020; National Vocational Education and Training Regulator (Transitional Provisions) Act 2001 to provide for transitional and application arrangements; and Education Services for Overseas Students Act 2000, Higher Education Support Act 2003, National Vocational Education and Training Regulator (Charges) Act 2012 and VET Student Loans Act 2016 to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6497_first-reps/toc_word/20011b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6497_first-reps/toc_pdf/20011b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6497_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6497_ems_3c6bf2ca-5f9b-48fc-be22-7a708ae537f4/upload_word/731285.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6497_ems_3c6bf2ca-5f9b-48fc-be22-7a708ae537f4/upload_pdf/731285.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6497_ems_3c6bf2ca-5f9b-48fc-be22-7a708ae537f4%22",
      "Yes": 7173,
      "No": 1696
    },
    {
      "Chamber": "House",
      "Short Title": "Native Title Legislation Amendment 2019",
      "Intro House": "2019-10-17",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6429",
      "id": "r6429",
      "Summary":
          "Amends the: Native Title Act 1993 to: allow a native title claim or compensation group to impose conditions on the authority of its authorised applicant and require public notification of any such conditions; clarify the duties of the applicant to the claim group; allow the applicant to act by majority as the default position; allow the composition of the applicant to be changed without further authorisation in certain circumstances; allow the claim group to put in place succession-planning arrangements for individual members of the applicant; allow body corporate Indigenous Land Use Agreements (ILUAs) to cover areas where native title has been extinguished; remove the requirement for the Native Title Registrar to notify an area ILUA unless satisfied it meets the ILUA requirements; allow minor amendments to be made to an ILUA without a new registration process; specify that the removal of an ILUA from the register does not invalidate future acts subject to that ILUA; extend the circumstances in which historical extinguishment can be disregarded to areas of national, state or territory parks, and certain pastoral leases; allow a registered native title body corporate to bring a compensation application over an area where native title has been extinguished; require the registrar to create and maintain a public record of section 31 agreements; and make a number of technical amendments; and Corporations (Aboriginal and Torres Strait Islander) Act 2006 (CATSI Act) to: require registered native title bodies corporate (RNTBC) constitutions to include dispute resolution pathways for persons who are or who claim to be common law holders, and provide for all the common law holders to be directly or indirectly represented in the RNTBC; limit the grounds for cancelling the membership of a member of a RNTBC to certain grounds; remove the discretion of directors of RNTBCs to refuse certain membership applications; specify that the registrar may place a RNTBC under special administration in certain circumstances; and ensure that proceedings in respect of a civil matter arising under the Act that relate to a RNTBC are to be instituted and determined exclusively in the Federal Court, unless transferred to another court with jurisdiction; confirm the validity of certain section 31 agreements; and provide that a person would be entitled to compensation if the bill effects the acquisition of property of a person other than on just terms (within the meaning of paragraph 51(xxxi) of the Constitution).",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6429_first-reps/toc_word/19198b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6429_first-reps/toc_pdf/19198b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6429_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6429_ems_63b0465f-e5f0-4a72-8c29-455594bc01dd/upload_word/719405.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6429_ems_63b0465f-e5f0-4a72-8c29-455594bc01dd/upload_pdf/719405.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6429_ems_63b0465f-e5f0-4a72-8c29-455594bc01dd%22",
      "Yes": 388,
      "No": 4424
    },
    {
      "Chamber": "House",
      "Short Title":
          "New Skilled Regional Visas (Consequential Amendments) 2019",
      "Intro House": "2019-07-31",
      "Passed House": "2019-10-14",
      "Intro Senate": "2019-10-17",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6384",
      "id": "r6384",
      "Summary":
          "Consequential on the Migration Amendment (New Skilled Regional Visas) Regulation 2019, which created two provisional skilled regional visas, the bill amends seven Acts to provide that holders of these provisional skilled regional visas will have the same access to welfare payments and government services as permanent visa holders where eligible.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6384_first-reps/toc_word/19147b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6384_first-reps/toc_pdf/19147b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6384_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6384_ems_5d1fed56-38a7-4252-9ab1-595402ef71e0/upload_word/713756.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6384_ems_5d1fed56-38a7-4252-9ab1-595402ef71e0/upload_pdf/713756.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6384_ems_5d1fed56-38a7-4252-9ab1-595402ef71e0%22",
      "Yes": 5263,
      "No": 2360
    },
    {
      "Chamber": "House",
      "Short Title":
          "Official Development Assistance Multilateral Replenishment Obligations (Special Appropriation) 2019",
      "Intro House": "2019-10-24",
      "Passed House": "2020-02-24",
      "Intro Senate": "2020-02-25",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6437",
      "id": "r6437",
      "Summary":
          "Appropriates money from the Consolidated Revenue Fund to meet certain Official Development Assistance Multilateral Replenishment Obligations in relation to the World Bank\u2019s International Development Association and debt relief schemes, including the Heavily Indebted Poor Countries Initiative and the Multilateral Debt Relief Initiative; the Asian Development Bank\u2019s Asian Development Fund; the Global Environment Facility Trust Fund; and the Multilateral Fund for the Implementation of the Montreal Protocol.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6437_first-reps/toc_word/19205b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6437_first-reps/toc_pdf/19205b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6437_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6437_ems_cb7bac82-88d3-4799-8188-41242b0e09ac/upload_word/719827.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6437_ems_cb7bac82-88d3-4799-8188-41242b0e09ac/upload_pdf/719827.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6437_ems_cb7bac82-88d3-4799-8188-41242b0e09ac%22",
      "Yes": 3590,
      "No": 9403
    },
    {
      "Chamber": "House",
      "Short Title":
          "Offshore Petroleum and Greenhouse Gas Storage Amendment (Cross-boundary Greenhouse Gas Titles and Other Measures) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-11",
      "Intro Senate": "2020-02-12",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6465",
      "id": "r6465",
      "Summary":
          "Introduced with the Offshore Petroleum and Greenhouse Gas Storage (Regulatory Levies) Amendment (Miscellaneous Measures) Bill 2019, the bill amends the Offshore Petroleum and Greenhouse Gas Storage Act,2006 to: provide for the grant and administration of single greenhouse gas (GHG) titles that straddle the boundary between Commonwealth waters and state or Northern Territory (NT) coastal waters; enable unification of adjacent Commonwealth GHG titles; and strengthen and clarify the powers of National Offshore Petroleum Safety and Environmental Management Authority inspectors during oil pollution emergencies.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6465_first-reps/toc_word/19235b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6465_first-reps/toc_pdf/19235b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6465_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6465_ems_16ee027f-f585-4918-a071-b67ff8d163dc/upload_word/724068.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6465_ems_16ee027f-f585-4918-a071-b67ff8d163dc/upload_pdf/724068.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6465_ems_16ee027f-f585-4918-a071-b67ff8d163dc%22",
      "Yes": 5606,
      "No": 7400
    },
    {
      "Chamber": "House",
      "Short Title":
          "Offshore Petroleum and Greenhouse Gas Storage (Regulatory Levies) Amendment (Miscellaneous Measures) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-11",
      "Intro Senate": "2020-02-12",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6464",
      "id": "r6464",
      "Summary":
          "Introduced with the Offshore Petroleum and Greenhouse Gas Storage Amendment (Cross-boundary Greenhouse Gas Titles and Other Measures) Bill 2019, the bill amends the Offshore Petroleum and Greenhouse Gas Storage (Regulatory Levies) Act 2003 to: provide that the greenhouse gas related provisions of the Act and regulations apply, and are taken to have always applied, to the states and the Northern Territory; and make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6464_first-reps/toc_word/19233b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6464_first-reps/toc_pdf/19233b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6464_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6464_ems_16ee027f-f585-4918-a071-b67ff8d163dc/upload_word/724068.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6464_ems_16ee027f-f585-4918-a071-b67ff8d163dc/upload_pdf/724068.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6464_ems_16ee027f-f585-4918-a071-b67ff8d163dc%22",
      "Yes": 4182,
      "No": 3681
    },
    {
      "Chamber": "House",
      "Short Title":
          "Paid Parental Leave Amendment (Flexibility Measures) 2020",
      "Intro House": "2020-02-06",
      "Passed House": "2020-02-25",
      "Intro Senate": "2020-02-25",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6486",
      "id": "r6486",
      "Summary":
          "Amends the: Paid Parental Leave Act 2010 to implement changes to the paid parental leave scheme to enable eligible claimants to claim up to 30 days of parental leave pay (PLP) within 24 months of the birth or adoption of a child, in addition to 12 weeks of PLP within 12 months of the child's birth or adoption; and A New Tax System (Family Assistance) Act 1999 and A,New Tax System (Family Assistance) (Administration) Act 1999 to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6486_first-reps/toc_word/20002b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6486_first-reps/toc_pdf/20002b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6486_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6486_ems_8ceed27f-2d4a-4934-ace7-b841ffec2a6f/upload_word/730098.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6486_ems_8ceed27f-2d4a-4934-ace7-b841ffec2a6f/upload_pdf/730098.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6486_ems_8ceed27f-2d4a-4934-ace7-b841ffec2a6f%22",
      "Yes": 1178,
      "No": 1747
    },
    {
      "Chamber": "House",
      "Short Title":
          "Private Health Insurance Legislation Amendment (Fairer Rules for General Treatments) 2019",
      "Intro House": "2019-11-25",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6442",
      "id": "r6442",
      "Summary":
          "Amends the: Private Health Insurance Act 2007 and Private Health Insurance (Prudential Supervision) Act 2015 to: prevent private health insurers from providing differential rebates for the same treatment provided under the same product in the same jurisdiction; enable the Australian Prudential Regulation Authority to intervene in the private health insurance market if private health insurers are inappropriately using information obtained from the Health Industry Claims and Payments Service to influence that market; and prevent private health funds from being both insurers and service providers of general health treatments.",
      "Sponsor": "WILKIE,Andrew,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6442_first-reps/toc_word/19218b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6442_first-reps/toc_pdf/19218b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6442_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6442_ems_fbea0aa5-acb6-4816-bdab-0a7645a79889/upload_word/19218EMWilkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6442_ems_fbea0aa5-acb6-4816-bdab-0a7645a79889/upload_pdf/19218EMWilkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6442_ems_fbea0aa5-acb6-4816-bdab-0a7645a79889%22",
      "Yes": 4144,
      "No": 5310
    },
    {
      "Chamber": "House",
      "Short Title": "Refugee Protection 2019",
      "Intro House": "2019-10-21",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6435",
      "id": "r6435",
      "Summary":
          "Establishes the Asia Pacific Asylum Seeker Solution as a regional framework for the Australian Government, in partnership with other countries within the Asia Pacific region, to provide for the protection and processing of asylum seekers and refugees.",
      "Sponsor": "WILKIE,Andrew,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6435_first-reps/toc_word/19206b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6435_first-reps/toc_pdf/19206b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6435_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6435_ems_97dc1d6f-b6ac-40ba-9915-48b27f098b50/upload_word/19206EMWilkie.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6435_ems_97dc1d6f-b6ac-40ba-9915-48b27f098b50/upload_pdf/19206EMWilkie.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6435_ems_97dc1d6f-b6ac-40ba-9915-48b27f098b50%22",
      "Yes": 2421,
      "No": 9623
    },
    {
      "Chamber": "House",
      "Short Title":
          "Representation Amendment (6 Regions Per State, 2 Senators Per Region) 2020",
      "Intro House": "2020-02-24",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6502",
      "id": "r6502",
      "Summary":
          "Amends the: Representation Act 1983 to: impose a geographical requirement on the representation requirements for the Senate, comprised of 6 divisions per state represented by two senators; and Commonwealth Electoral Act 1983 to make a consequential amendment.",
      "Sponsor": "JOYCE,Barnaby,MP",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6502_first-reps/toc_word/20019b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6502_first-reps/toc_pdf/20019b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6502_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6502_ems_d4bb7700-4250-4916-b786-2d5e4174323c/upload_word/20019EMJoyce.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6502_ems_d4bb7700-4250-4916-b786-2d5e4174323c/upload_pdf/20019EMJoyce.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6502_ems_d4bb7700-4250-4916-b786-2d5e4174323c%22",
      "Yes": 8701,
      "No": 5223
    },
    {
      "Chamber": "House",
      "Short Title":
          "Social Security (Administration) Amendment (Income Management to Cashless Debit Card Transition) 2019",
      "Intro House": "2019-09-11",
      "Passed House": "",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6399",
      "id": "r6399",
      "Summary":
          "Amends the Social Security (Administration) Act 1999 to: extend the end date for existing cashless debit card (CDC) trial areas from 30 June 2020 to 30 June 2021 and establish an end date for the CDC trial in the Cape York area of 31 December 2021; remove the cap on the number of CDC trial participants; remove the exclusion to allow people in the Bundaberg and Hervey Bay trial area to be able to voluntarily participate in the CDC trial; establish the Northern Territory and Cape York areas as CDC trial areas and transition income management participants in these sites onto the CDC trial in 2020; enable the secretary to advise a community body when a person has exited the CDC trial and remove the requirement that an evaluation be conducted by an independent expert within 6 months of the completion of a review of the CDC trial.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6399_first-reps/toc_word/19171b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6399_first-reps/toc_pdf/19171b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6399_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6399_ems_0db91448-bcc6-4d81-b59b-003d85d2997a/upload_word/19171EM.DOCX;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6399_ems_0db91448-bcc6-4d81-b59b-003d85d2997a/upload_pdf/19171EM.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6399_ems_0db91448-bcc6-4d81-b59b-003d85d2997a%22",
      "Yes": 4642,
      "No": 3274
    },
    {
      "Chamber": "House",
      "Short Title":
          "Social Services and Other Legislation Amendment (Simplifying Income Reporting and Other Measures) 2020",
      "Intro House": "2020-02-06",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-12",
      "Passed Senate": "",
      "Assent Date": "2020-03-06",
      "Act No.": "17",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6488",
      "id": "r6488",
      "Summary":
          "Amends the Social Security Act 1991 and four other Acts to: provide that, for the purposes of determining a person's rate of payment under social security law, employment income is assessed once it is paid to a social security recipient (replacing the current requirement for recipients to estimate and report the amount of employment income they have earned in a social security instalment period); and enable Services Australia to use data collected by the Australian Taxation Office (primarily information from the Single Touch Payroll system) in connection with the new assessment model.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6488_first-reps/toc_word/20004b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6488_first-reps/toc_pdf/20004b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6488_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6488_ems_d1d3d087-21ee-4ce1-8045-0af2e7554d8b/upload_word/730099.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6488_ems_d1d3d087-21ee-4ce1-8045-0af2e7554d8b/upload_pdf/730099.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6488_ems_d1d3d087-21ee-4ce1-8045-0af2e7554d8b%22",
      "Yes": 6131,
      "No": 4995
    },
    {
      "Chamber": "House",
      "Short Title":
          "Social Services Legislation Amendment (Better Targeting Student Payments) 2019",
      "Intro House": "2019-09-11",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6400",
      "id": "r6400",
      "Summary":
          "Amends the: Social Security Act 1991 to: restrict access to the relocation scholarship to students relocating within Australia and students studying in Australia; align pensioner education supplement fortnightly rates with the amount of study undertaken by eligible students; and provide that payments of the pensioner education supplement cease during semester breaks and holiday periods; and Social Security Act 1991 and Veterans\u2019 Entitlements Act 1986 to align education entry payment rates with the amount of study undertaken by eligible students.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6400_first-reps/toc_word/19165b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6400_first-reps/toc_pdf/19165b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6400_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6400_ems_9454a3dc-a6ad-4bfa-996a-15ec252214e1/upload_word/19165EM.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6400_ems_9454a3dc-a6ad-4bfa-996a-15ec252214e1/upload_pdf/19165EM.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6400_ems_9454a3dc-a6ad-4bfa-996a-15ec252214e1%22",
      "Yes": 1082,
      "No": 5194
    },
    {
      "Chamber": "House",
      "Short Title":
          "Social Services Legislation Amendment (Drug Testing Trial) 2019",
      "Intro House": "2019-09-11",
      "Passed House": "2019-10-17",
      "Intro Senate": "2019-10-17",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6395",
      "id": "r6395",
      "Summary":
          "Amends the: Social Security Act 1991 and Social Security (Administration) Act 1999 to establish a two year drug testing trial in three regions for 5000 new recipients of newstart allowance and youth allowance; Farm Household Support Act 2014 to make consequential amendments; and Farm Household Support Act 2014, Social Security Act 1991 and Social Security (Administration) Act 1999 to substitute references to the newstart allowance with references to the jobseeker payment following commencement of the Social Services Legislation Amendment (Welfare Reform) Act 2018.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6395_first-reps/toc_word/19170b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6395_first-reps/toc_pdf/19170b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6395_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6395_ems_1871e79c-6e2c-4685-a704-d456be73e0c6/upload_word/716957.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6395_ems_1871e79c-6e2c-4685-a704-d456be73e0c6/upload_pdf/716957.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6395_ems_1871e79c-6e2c-4685-a704-d456be73e0c6%22",
      "Yes": 4210,
      "No": 6856
    },
    {
      "Chamber": "House",
      "Short Title":
          "Social Services Legislation Amendment (Payment Integrity) 2019",
      "Intro House": "2019-09-11",
      "Passed House": "2019-12-02",
      "Intro Senate": "2019-12-03",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6401",
      "id": "r6401",
      "Summary":
          "Amends the: Social Security Act 1991 to: amend the residency requirements for the age pension and the disability support pension by changing certain timeframes which need to be met before claims will be deemed payable to eligible recipients; and increase the maximum liquid assets waiting period for youth allowance, austudy, newstart allowance (or jobseeker payment from 20 March 2020) and sickness allowance from 13 weeks to 26 weeks; proposed New Skilled Regional Visas (Consequential Amendments) Act 2019 to make contingent amendments to a transitional provision; and Social Security Act 1991 and Veterans\u2019 Entitlements Act 1986 to cease payment of the pension supplement after six weeks temporary absence overseas and immediately for permanent departures.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6401_first-reps/toc_word/19164b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6401_first-reps/toc_pdf/19164b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6401_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6401_ems_f6c5512f-ec0b-43f1-988a-2fe66a30d1e9/upload_word/719400.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6401_ems_f6c5512f-ec0b-43f1-988a-2fe66a30d1e9/upload_pdf/719400.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6401_ems_f6c5512f-ec0b-43f1-988a-2fe66a30d1e9%22",
      "Yes": 4032,
      "No": 1917
    },
    {
      "Chamber": "House",
      "Short Title": "Statute Update (Regulations References) 2020",
      "Intro House": "2020-02-12",
      "Passed House": "2020-02-26",
      "Intro Senate": "2020-02-26",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "18",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6494",
      "id": "r6494",
      "Summary":
          "Amends 10 Acts to: replace references to specific provisions of regulations with more general means of identifying the provisions, so that the correct links between the contents of regulations and Acts will remain even if the regulations are remade, renamed or renumbered; and make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6494_first-reps/toc_word/20006b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6494_first-reps/toc_pdf/20006b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6494_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6494_ems_9579e340-84d8-4de4-a415-16ca06d63ff5/upload_word/730655.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6494_ems_9579e340-84d8-4de4-a415-16ca06d63ff5/upload_pdf/730655.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6494_ems_9579e340-84d8-4de4-a415-16ca06d63ff5%22",
      "Yes": 7711,
      "No": 9355
    },
    {
      "Chamber": "House",
      "Short Title":
          "Student Identifiers Amendment (Enhanced Student Permissions) 2019",
      "Intro House": "2019-11-28",
      "Passed House": "2020-02-10",
      "Intro Senate": "2020-02-11",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6444",
      "id": "r6444",
      "Summary":
          "Amends the Student Identifiers Act 2014 to: allow any entity to request access to an individual's authenticated vocational education and training (VET) transcripts (or extract), where that access is permitted by the access controls set by the individual; and introduce new civil penalties in relation to further applications for student identifiers, alteration of authenticated VET transcripts and representing that a non-authentic document is an authenticated VET transcript (or extract).",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6444_first-reps/toc_word/19214b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6444_first-reps/toc_pdf/19214b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6444_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6444_ems_68dc05c5-1897-467f-b698-33cf6ad87491/upload_word/19214EM%20Addendum.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6444_ems_68dc05c5-1897-467f-b698-33cf6ad87491/upload_pdf/19214EM%20Addendum.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6444_ems_68dc05c5-1897-467f-b698-33cf6ad87491%22",
      "Yes": 4474,
      "No": 4030
    },
    {
      "Chamber": "House",
      "Short Title": "Student Identifiers Amendment (Higher Education) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-24",
      "Intro Senate": "2020-02-24",
      "Passed Senate": "2020-02-27",
      "Assent Date": "2020-03-06",
      "Act No.": "19",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6472",
      "id": "r6472",
      "Summary":
          "Amends the Student Identifiers Act 2014 to: enable the extension of the unique student identifier from vocational education and training (VET) to higher education students; expand the powers and functions of the Student Identifiers Registrar to include the operation of the student identifier in the higher education sector; and make minor amendments contingent on the commencement of the Education Legislation Amendment (Tuition Protection and Other Measures) Act 2019 and Student Identifiers Amendment (Enhanced Student Permissions) Act 2019.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6472_first-reps/toc_word/19243b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6472_first-reps/toc_pdf/19243b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6472_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6472_ems_7d66d80f-d486-429f-af5b-ab753cdaef06/upload_word/723539.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6472_ems_7d66d80f-d486-429f-af5b-ab753cdaef06/upload_pdf/723539.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6472_ems_7d66d80f-d486-429f-af5b-ab753cdaef06%22",
      "Yes": 5468,
      "No": 5116
    },
    {
      "Chamber": "House",
      "Short Title": "Superannuation Amendment (PSSAP Membership) 2020",
      "Intro House": "2020-02-13",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6498",
      "id": "r6498",
      "Summary":
          "Amends the Superannuation Act 2005 to extend membership of the Public Sector Superannuation Accumulation Plan to certain current and former Commonwealth employees and statutory office holders who are not otherwise eligible.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6498_first-reps/toc_word/20010b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6498_first-reps/toc_pdf/20010b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6498_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6498_ems_28be39f8-31d4-4963-98b2-bd6e315f78a7/upload_word/730794.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6498_ems_28be39f8-31d4-4963-98b2-bd6e315f78a7/upload_pdf/730794.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6498_ems_28be39f8-31d4-4963-98b2-bd6e315f78a7%22",
      "Yes": 4697,
      "No": 8267
    },
    {
      "Chamber": "House",
      "Short Title":
          "Telecommunications Legislation Amendment (Competition and Consumer) 2019",
      "Intro House": "2019-11-28",
      "Passed House": "2020-02-13",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6451",
      "id": "r6451",
      "Summary":
          "Introduced with the Telecommunications (Regional Broadband Scheme) Charge Bill 2019, the bill amends the: Competition and Consumer Act 2010 and Telecommunications Act 1997 in relation to: Layer 2 bitstream services; and statutory infrastructure providers; Competition and Consumer Act 2010 and Telecommunications Act 1997 and two legislative instruments in relation to local access lines; Competition and Consumer Act 2010, Telecommunications Act 1997 and Telecommunications (Consumer Protection and Service Standards) Act 1999 in relation to funding of fixed wireless broadband and satellite broadband; and National Broadband Network Companies Act 2011 to require NBN Co to provide certain data about premises connected, or due to be connected, to the NBN. Also repeals four declarations.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6451_first-reps/toc_word/19223b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6451_first-reps/toc_pdf/19223b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6451_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6451_ems_a15641ad-f2d4-4511-bb12-811c6073e6f7/upload_word/723135.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6451_ems_a15641ad-f2d4-4511-bb12-811c6073e6f7/upload_pdf/723135.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6451_ems_a15641ad-f2d4-4511-bb12-811c6073e6f7%22",
      "Yes": 8567,
      "No": 4317
    },
    {
      "Chamber": "House",
      "Short Title":
          "Telecommunications Legislation Amendment (International Production Orders) 2020",
      "Intro House": "2020-03-05",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6511",
      "id": "r6511",
      "Summary":
          "Amends the Telecommunications (Interception and Access) Act 1979 to: provide a framework for Australian agencies to obtain independently-authorised international production orders for interception, stored communications and telecommunications data directly to designated communications providers in foreign countries with which Australia has a designated international agreement; make amendments contingent on the commencement of the proposed Federal Circuit and Family Court of Australia Act 2020; and remove the ability for nominated Administrative Appeals Tribunal members to issue certain warrants. Also amends: six Acts to make consequential amendments; and the Surveillance Devices Act 2004 to correct a drafting error.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6511_first-reps/toc_word/20025b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6511_first-reps/toc_pdf/20025b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6511_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6511_ems_0ac5ae09-3e3e-400b-ae5e-680a68af4e45/upload_word/733176.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6511_ems_0ac5ae09-3e3e-400b-ae5e-680a68af4e45/upload_pdf/733176.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6511_ems_0ac5ae09-3e3e-400b-ae5e-680a68af4e45%22",
      "Yes": 5462,
      "No": 5299
    },
    {
      "Chamber": "House",
      "Short Title":
          "Telecommunications (Regional Broadband Scheme) Charge 2019",
      "Intro House": "2019-11-28",
      "Passed House": "2020-02-13",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6452",
      "id": "r6452",
      "Summary":
          "Introduced with the Telecommunications Legislation Amendment (Competition and Consumer) Bill 2019, the bill establishes an ongoing funding arrangement for fixed wireless and satellite infrastructure (the Regional Broadband Scheme) by imposing a monthly charge on carriers, including NBN Co Ltd, in relation to each premises connected to their network that has an active fixed-line superfast broadband service during the month.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6452_first-reps/toc_word/19224b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6452_first-reps/toc_pdf/19224b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6452_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6452_ems_b0149742-0bf3-4d5b-a00c-4f6f6931e284/upload_word/722793.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6452_ems_b0149742-0bf3-4d5b-a00c-4f6f6931e284/upload_pdf/722793.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6452_ems_b0149742-0bf3-4d5b-a00c-4f6f6931e284%22",
      "Yes": 3510,
      "No": 6618
    },
    {
      "Chamber": "House",
      "Short Title":
          "Tertiary Education Quality and Standards Agency Amendment (Prohibiting Academic Cheating Services) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6483",
      "id": "r6483",
      "Summary":
          "Amends the Tertiary Education Quality and Standards Agency Act 2011 to: create a new criminal offence of providing or advertising an academic cheating service on a commercial basis; and broaden the role of the Tertiary Education Quality and Standards Agency to include the prevention and minimisation of the use and promotion of academic cheating services in courses provided by higher education providers.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6483_first-reps/toc_word/19257b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6483_first-reps/toc_pdf/19257b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6483_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6483_ems_d9f89ad0-f957-4e43-873a-bff12b21d878/upload_word/723541.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6483_ems_d9f89ad0-f957-4e43-873a-bff12b21d878/upload_pdf/723541.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6483_ems_d9f89ad0-f957-4e43-873a-bff12b21d878%22",
      "Yes": 6877,
      "No": 2466
    },
    {
      "Chamber": "House",
      "Short Title": "Therapeutic Goods Amendment (2020 Measures No. 1) 2020",
      "Intro House": "2020-03-04",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6507",
      "id": "r6507",
      "Summary":
          "Amends the: Therapeutic Goods Act 1989 to: align certain device-related definitions with the equivalent definition in the European Union; enable the secretary to provide early scientific advice to a sponsor about the safety, quality or efficacy of a registrable medicine; enable a clinical trial sponsor to request variations to approved clinical trials; introduce a new preliminary assessment procedure for applications for new ingredients for listed and assessed listed medicines; remove a limitation on the circumstances in which medical practitioners may be authorised to supply specified unapproved therapeutic goods to their patients; remove certain offences for persons claiming to be able to arrange supply of therapeutic goods; impose a condition of registration or listing of therapeutic goods; specify the circumstances in which a sponsor may apply for the provisional registration of a medicine, without having to first obtain a provisional determination; introduce a data protection regime for assessed listed medicines; and make minor amendments and corrections; and Patents Act 1990 to remove a reference to therapeutic devices.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6507_first-reps/toc_word/20023b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6507_first-reps/toc_pdf/20023b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6507_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6507_ems_0ccb15b7-90ea-46dc-98fa-2faac66b5552/upload_word/733121.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6507_ems_0ccb15b7-90ea-46dc-98fa-2faac66b5552/upload_pdf/733121.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6507_ems_0ccb15b7-90ea-46dc-98fa-2faac66b5552%22",
      "Yes": 5301,
      "No": 8236
    },
    {
      "Chamber": "House",
      "Short Title":
          "Trade Support Loans Amendment (Improving Administration) 2019",
      "Intro House": "2019-11-28",
      "Passed House": "2020-02-10",
      "Intro Senate": "2020-02-10",
      "Passed Senate": "2020-02-24",
      "Assent Date": "2020-03-06",
      "Act No.": "20",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6458",
      "id": "r6458",
      "Summary":
          "Amends the Trade Support Loans Act 2014 to: enable the secretary to provide for offsetting arrangements where an amount is wrongly paid as an instalment of a trade support loan (TSL); provide the secretary with a discretion to extend the period for notifying a change of address; and align the minimum periods for TSL recipients to notify the secretary of information under the Act.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6458_first-reps/toc_word/19231b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6458_first-reps/toc_pdf/19231b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6458_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6458_ems_b5efada7-6aa4-489d-b219-325b84523e82/upload_word/19231EM%20Addendum.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6458_ems_b5efada7-6aa4-489d-b219-325b84523e82/upload_pdf/19231EM%20Addendum.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6458_ems_b5efada7-6aa4-489d-b219-325b84523e82%22",
      "Yes": 1681,
      "No": 6205
    },
    {
      "Chamber": "House",
      "Short Title": "Transport Security Amendment (Serious Crime) 2019",
      "Intro House": "2019-10-23",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6440",
      "id": "r6440",
      "Summary":
          "Amends the Aviation Transport Security Act 2004 and Maritime Transport and Offshore Facilities Security Act 2003 to: prevent the use of aviation and maritime transport or offshore facilities in connection with serious crime; establish a regulatory framework to implement harmonised eligibility criteria for the aviation security identification card (ASIC) and maritime security identification card (MSIC) schemes; clarify and align the legislative basis for undertaking security checking of ASIC and MSIC applicants and holders; provide for regulations to prescribe penalties for offences; and insert an additional severability provision to provide guidance to a court as to Parliament\u2019s intention.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6440_first-reps/toc_word/19210b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6440_first-reps/toc_pdf/19210b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6440_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6440_ems_3ec88f82-8833-45fc-8292-a0e2233f4393/upload_word/720215.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6440_ems_3ec88f82-8833-45fc-8292-a0e2233f4393/upload_pdf/720215.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6440_ems_3ec88f82-8833-45fc-8292-a0e2233f4393%22",
      "Yes": 5646,
      "No": 529
    },
    {
      "Chamber": "House",
      "Short Title": "Treasury Laws Amendment (2018 Measures No. 2) 2019",
      "Intro House": "2018-07-04",
      "Passed House": "2018-10-15",
      "Intro Senate": "2018-10-17",
      "Passed Senate": "2019-02-10",
      "Assent Date": "2019-02-26",
      "Act No.": "8",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6341",
      "id": "r6341",
      "Summary":
          "Amends the: Corporations Act 2001 and National Consumer Credit Protection Act 2009 to allow regulations to provide for exemptions from the Australian Financial Services Licence and Australian Credit Licence requirements for the purposes of testing financial and credit products and services under certain conditions; Income Tax Assessment Act 1997 to amend the venture capital and early stage investor provisions to ensure that they operate as intended in relation to capital gains tax transactions, managed investment trusts and the early stage investor tax offset; and Income Tax Assessment Act 1936 to amend the definition of public trading trusts. Also provides for an independent review of the operation of the exemptions from the Australian Financial Services Licence and Australian Credit Licence requirements.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6341_first-reps/toc_word/19099b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6341_first-reps/toc_pdf/19099b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6341_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6341_ems_54c01a4c-d610-49a1-8822-829d8ff9c444/upload_word/711025.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6341_ems_54c01a4c-d610-49a1-8822-829d8ff9c444/upload_pdf/711025.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6341_ems_54c01a4c-d610-49a1-8822-829d8ff9c444%22",
      "Yes": 1217,
      "No": 1359
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (2019-20 Bushfire Tax Assistance) 2020",
      "Intro House": "2019-02-05",
      "Passed House": "2019-02-05",
      "Intro Senate": "2019-02-05",
      "Passed Senate": "2019-02-06",
      "Assent Date": "2019-02-13",
      "Act No.": "1",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6487",
      "id": "r6487",
      "Summary":
          "Amends the Income Tax Assessment Act 1997 in relation to the 2019-20 bushfires to: make government support payments to volunteer firefighters and relief and recovery payments and non-cash benefits provided by Australian governments non-assessable non-exempt income; and update the list of deductible gift recipients to include the Australian Volunteers Support Trust and the Community Rebuilding Trust.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6487_first-reps/toc_word/20003b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6487_first-reps/toc_pdf/20003b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6487_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6487_ems_f9d91fda-d310-40bf-8db2-0f5c38416fcb/upload_word/730238.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6487_ems_f9d91fda-d310-40bf-8db2-0f5c38416fcb/upload_pdf/730238.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6487_ems_f9d91fda-d310-40bf-8db2-0f5c38416fcb%22",
      "Yes": 7957,
      "No": 8650
    },
    {
      "Chamber": "House",
      "Short Title": "Treasury Laws Amendment (2019 Measures No. 3) 2019",
      "Intro House": "2019-12-05",
      "Passed House": "2020-02-11",
      "Intro Senate": "2020-02-12",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6466",
      "id": "r6466",
      "Summary":
          "Amends: the Income Tax Assessment Act 1936 to provide that the tax concessions available to minors for income from a testamentary trust apply only in respect of income generated from assets of the deceased estate transferred to the testamentary trust (or the proceeds of the disposal or investment of those assets); the Corporations Act 2001 to defer the transitional timeframes for existing providers to comply with the education and training standard requiring completion of an approved degree or equivalent qualification and the passing of an approved exam to 1 January 2026 and 1 January 2022, respectively; and 30 Acts to make minor and technical amendments to laws relating to taxation, superannuation, corporations and credit.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6466_first-reps/toc_word/19237b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6466_first-reps/toc_pdf/19237b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6466_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6466_ems_d1533a9e-7be7-4f4f-b619-2d1d9b3db016/upload_word/724071.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6466_ems_d1533a9e-7be7-4f4f-b619-2d1d9b3db016/upload_pdf/724071.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6466_ems_d1533a9e-7be7-4f4f-b619-2d1d9b3db016%22",
      "Yes": 4709,
      "No": 9946
    },
    {
      "Chamber": "House",
      "Short Title": "Treasury Laws Amendment (2020 Measures No. 1) 2020",
      "Intro House": "2020-02-12",
      "Passed House": "",
      "Intro Senate": "",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6492",
      "id": "r6492",
      "Summary":
          "Amends the: Income Tax Assessment Act 1997 to extend the circumstances in which an entity is a significant global entity; and Income Tax Assessment Act 1997 and Taxation Administration Act 1953 to: amend the country by country (CBC) reporting requirements and the requirement to provide general purpose financial statements so that they apply to a subset of significant global entities (referred to as CBC reporting entities) rather than all significant global entities; and make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6492_first-reps/toc_word/20008b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6492_first-reps/toc_pdf/20008b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6492_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6492_ems_2bdf67d4-7464-4843-9015-45236739b11c/upload_word/730710.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6492_ems_2bdf67d4-7464-4843-9015-45236739b11c/upload_pdf/730710.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6492_ems_2bdf67d4-7464-4843-9015-45236739b11c%22",
      "Yes": 1412,
      "No": 623
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (Combating Illegal Phoenixing) 2019",
      "Intro House": "2019-07-04",
      "Passed House": "2019-11-27",
      "Intro Senate": "2019-11-27",
      "Passed Senate": "",
      "Assent Date": "2019-02-17",
      "Act No.": "6",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6325",
      "id": "r6325",
      "Summary":
          "Amends: the Corporations Act 2001 to: introduce new criminal offences and civil penalty provisions for company officers that fail to prevent the company from making creditor-defeating dispositions and other persons that facilitate a company making a creditor-defeating disposition; allow liquidators to apply for a court order in relation to a voidable creditor-defeating disposition; enable the Australian Securities and Investments Commission to make orders to recover, for the benefit of a company\u2019s creditors, company property disposed of or benefits received under a voidable creditor-defeating disposition; and prevent directors from improperly backdating resignations or ceasing to be a director when this would leave a company with no directors; the A New Tax System (Goods and Services Tax) Act 1999 and Taxation Administration Act 1953 to enable the Commissioner of Taxation to collect estimates of anticipated goods and services tax (GST) liabilities and make company directors personally liable for their company's GST liabilities in certain circumstances; the Taxation Administration Act 1953 to authorise the commissioner to retain tax refunds where a taxpayer has failed to lodge a return or provide other information that may affect the amount of a refund; and five Acts to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6325_first-reps/toc_word/19085b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6325_first-reps/toc_pdf/19085b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6325_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6325_ems_782003df-72c7-424b-b07c-ff5d5c2543c1/upload_word/710915.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6325_ems_782003df-72c7-424b-b07c-ff5d5c2543c1/upload_pdf/710915.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6325_ems_782003df-72c7-424b-b07c-ff5d5c2543c1%22",
      "Yes": 6862,
      "No": 8605
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (Recovering Unpaid Superannuation) 2019",
      "Intro House": "2019-09-18",
      "Passed House": "2019-11-28",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "2020-02-24",
      "Assent Date": "2020-03-06",
      "Act No.": "21",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6413",
      "id": "r6413",
      "Summary":
          "Amends the: Income Tax Assessment Act 1997 and Superannuation Guarantee (Administration) Act 1992 to provide for a one-off amnesty to encourage employers to self-correct historical superannuation guarantee non compliance; and Superannuation Guarantee (Administration) Act 1992 to limit the Commissioner of Taxation\u2019s ability to remit penalties for historical superannuation guarantee non-compliance, where an employer fails to disclose information relevant to their historical superannuation guarantee shortfall.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6413_first-reps/toc_word/19180b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6413_first-reps/toc_pdf/19180b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6413_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6413_ems_d5231957-82d8-4145-be0f-3e5e245a7dfd/upload_word/19180EM.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6413_ems_d5231957-82d8-4145-be0f-3e5e245a7dfd/upload_pdf/19180EM.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6413_ems_d5231957-82d8-4145-be0f-3e5e245a7dfd%22",
      "Yes": 4971,
      "No": 5831
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (Registries Modernisation and Other Measures) 2019",
      "Intro House": "2019-12-04",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6471",
      "id": "r6471",
      "Summary":
          "Introduced with the Commonwealth Registers Bill 2019, Business Names Registration (Fees) Amendment (Registries Modernisation) Bill 2019, Corporations (Fees) Amendment (Registries Modernisation) Bill 2019 and National Consumer Credit Protection (Fees) Amendment (Registries Modernisation) Bill 2019 to create a new Commonwealth business registry regime, the bill: amends 12 Acts to bring 35 existing business registers into the new regime; and Corporations (Aboriginal and Torres Strait Islander) Act 2006, Corporations Act 2001, Income Tax Assessment Act 1936 and Taxation Administration Act 1953 to introduce a director identification number requirement.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6471_first-reps/toc_word/19242b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6471_first-reps/toc_pdf/19242b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6471_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6471_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_word/723538.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6471_ems_e063b7ca-d61d-4993-a078-292990b204fc/upload_pdf/723538.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6471_ems_e063b7ca-d61d-4993-a078-292990b204fc%22",
      "Yes": 6409,
      "No": 2120
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (Research and Development Tax Incentive) 2019",
      "Intro House": "2019-12-05",
      "Passed House": "2020-02-10",
      "Intro Senate": "2020-02-10",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6473",
      "id": "r6473",
      "Summary":
          "Amends the: Income Tax Assessment Act 1997 and Tax Laws Amendment (Research and Development) Act,2015 to: permanently increase the research and development (R&D) expenditure threshold from AUD 100 million to AUD 150 million; link the R&D tax offset for refundable R&D tax offset claimants to their corporate tax rates plus a 13.5 percentage point premium; cap the refundability of the R&D tax offset at AUD 4 million per annum; and increase the targeting of the R&D tax incentive to larger R&D entities with high levels of R&D intensity; Income Tax Assessment Act 1997 to extend the concept of tax benefits in the general anti-avoidance rule in Part IVA of the Income Tax Assessment Act 1936 to include the R&D tax offset; Income Tax Assessment Act,1997, Income Tax Rates Act 1986 and Income Tax (Transitional Provisions) Act 1997 to: remake and consolidate provisions relating to clawback of R&D recoupments and feedstock adjustments; introduce a new uniform clawback rule that applies for recoupments, feedstock adjustments and balancing adjustment amounts included in an R&D entity's assessable income; and introduce a new catch-up rule for R&D assets; Taxation Administration Act 1953 to require the Commissioner of Taxation to publish information about relevant activities of R&D entities claiming the R&D tax offset following a two-year delay; Industry Research and Development Act,1986 (IR&D Act) to: provide for the Board of Innovation and Science Australia (ISA) to make a determination, by notifiable instrument, about how it will exercise its powers and perform its functions and duties; and expand the existing power of the Board of ISA and its committees to delegate some or all of their functions to include certain members of the Australian Public Service; and Industry Research and Development Decision-making Principles 2011 to provide that extensions of time granted under the IR&D Act may relate to certain applications.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6473_first-reps/toc_word/19245b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6473_first-reps/toc_pdf/19245b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6473_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6473_ems_a861d314-41c0-489b-b96e-875db0d25b75/upload_word/723652.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6473_ems_a861d314-41c0-489b-b96e-875db0d25b75/upload_pdf/723652.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6473_ems_a861d314-41c0-489b-b96e-875db0d25b75%22",
      "Yes": 1269,
      "No": 8817
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (Reuniting More Superannuation) 2020",
      "Intro House": "2020-02-06",
      "Passed House": "2020-02-11",
      "Intro Senate": "2020-02-12",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6491",
      "id": "r6491",
      "Summary":
          "Amends the: Retirement Savings Accounts Act 1997, Superannuation Industry (Supervision) Act 1993 and Superannuation (Unclaimed Money and Lost Members) Act 1999 to: facilitate the closure of eligible rollover funds by 30 June 2021; and enable the Commissioner of Taxation to reunite amounts he or she receives from eligible rollover funds with a member's active account; and Income Tax Assessment Act 1997 and Taxation Administration Act 1953 to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6491_first-reps/toc_word/20005b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6491_first-reps/toc_pdf/20005b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6491_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6491_ems_5399c6fb-a69a-4140-9cd1-676db9a7ff12/upload_word/730648.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6491_ems_5399c6fb-a69a-4140-9cd1-676db9a7ff12/upload_pdf/730648.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6491_ems_5399c6fb-a69a-4140-9cd1-676db9a7ff12%22",
      "Yes": 495,
      "No": 5621
    },
    {
      "Chamber": "House",
      "Short Title":
          "Treasury Laws Amendment (Your Superannuation, Your Choice) 2019",
      "Intro House": "2019-11-27",
      "Passed House": "2020-02-12",
      "Intro Senate": "2020-02-12",
      "Passed Senate": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6447",
      "id": "r6447",
      "Summary":
          "Amends the Superannuation Guarantee (Administration) Act 1992 to provide that employees under workplace determinations or enterprise agreements have the right to choose their superannuation fund.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6447_first-reps/toc_word/19215b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6447_first-reps/toc_pdf/19215b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6447_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6447_ems_5a84afb7-ebc9-44ae-b9ec-cb03bd0c4ea1/upload_word/722780.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6447_ems_5a84afb7-ebc9-44ae-b9ec-cb03bd0c4ea1/upload_pdf/722780.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6447_ems_5a84afb7-ebc9-44ae-b9ec-cb03bd0c4ea1%22",
      "Yes": 7182,
      "No": 9334
    },
    {
      "Chamber": "House",
      "Short Title": "VET Student Loans (VSL Tuition Protection Levy) 2019",
      "Intro House": "2019-09-18",
      "Passed House": "2019-10-24",
      "Intro Senate": "",
      "Passed Senate": "2019-02-05",
      "Assent Date": "2019-02-17",
      "Act No.": "5",
      "URL":
          "https://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=r6416",
      "id": "r6416",
      "Summary":
          "Part of a package of three bills to implement a tuition protection model for students participating in the VET Student Loans program and for higher education students accessing FEE-HELP or HECS-HELP assistance at a private education provider or TAFE, the bill imposes the VSL tuition protection levy, specifies the amounts that are payable by various classes of providers, and prescribes the levy components and the manner in which, and by whom, they will be determined each year.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6416_first-reps/toc_word/19183b01.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/r6416_first-reps/toc_pdf/19183b01.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fr6416_first-reps%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6416_ems_4e374301-7160-49f8-b54d-bca9b9240fc4/upload_word/717395.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/r6416_ems_4e374301-7160-49f8-b54d-bca9b9240fc4/upload_pdf/717395.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fr6416_ems_4e374301-7160-49f8-b54d-bca9b9240fc4%22",
      "Yes": 9089,
      "No": 327
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Agriculture Legislation Amendment (Streamlining Administration) 2019",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "2020-02-25",
      "Intro House": "2020-02-25",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1245",
      "id": "s1245",
      "Summary":
          "Amends the Biosecurity Act 2015 and Imported Food Control Act 1992 to enable computerised decision-making for certain purposes.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1245_first-senate/toc_word/1922020.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1245_first-senate/toc_pdf/1922020.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1245_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1245_ems_3d3fb98f-a96c-404f-b9ac-1e85119a6b2a/upload_word/723182em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1245_ems_3d3fb98f-a96c-404f-b9ac-1e85119a6b2a/upload_pdf/723182em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1245_ems_3d3fb98f-a96c-404f-b9ac-1e85119a6b2a%22",
      "Yes": 5011,
      "No": 7812
    },
    {
      "Chamber": "Senate",
      "Short Title": "Air Services Amendment 2018",
      "Intro Senate": "2018-03-27",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1125",
      "id": "s1125",
      "Summary":
          "Amends the: Air Services Act 1995 to: provide that the functions of Airservices Australia (AA) include undertaking activities to protect the human and natural environment, community amenity and residential areas from the effects of the operation and use of aircraft, and associated effects; introduce new consultation arrangements for AA and persons affected by aircraft noise; require AA to consider the need to minimise the impact of aircraft operations on the human and natural environment, community amenity and residential areas when preparing corporate plans; expand the AA board by up to two members and require that it include an expert in environmental management and a representative of a community group affected by aircraft noise; and provide for the creation and operations of the Aircraft Noise Ombudsman and related reporting arrangements; and Environment Protection and Biodiversity Conservation Act 1999 to require the minister to appoint an independent Community Aviation Advocate to represent communities affected by aircraft noise.",
      "Sponsor": "RICE,SenJanet",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1125_first-senate/toc_word/1808020.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1125_first-senate/toc_pdf/1808020.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1125_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1125_ems_f522c04f-f872-487e-99e1-6b6df1cb940c/upload_word/18080em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1125_ems_f522c04f-f872-487e-99e1-6b6df1cb940c/upload_pdf/18080em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1125_ems_f522c04f-f872-487e-99e1-6b6df1cb940c%22",
      "Yes": 9045,
      "No": 6056
    },
    {
      "Chamber": "Senate",
      "Short Title": "Australian Cannabis Agency 2018",
      "Intro Senate": "2018-11-27",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1156",
      "id": "s1156",
      "Summary":
          "Establishes the Australian Cannabis Agency to regulate the production and distribution of recreational cannabis in the Australian Capital Territory and the Northern Territory.",
      "Sponsor": "DINATALE,SenRichard",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1156_first-senate/toc_word/1824820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1156_first-senate/toc_pdf/1824820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1156_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1156_ems_c9a11d1c-8a35-4904-b51a-3c9cafb140fe/upload_word/18248em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1156_ems_c9a11d1c-8a35-4904-b51a-3c9cafb140fe/upload_pdf/18248em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1156_ems_c9a11d1c-8a35-4904-b51a-3c9cafb140fe%22",
      "Yes": 345,
      "No": 8689
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Australian Education Legislation Amendment (Prohibiting the Indoctrination of Children) 2020",
      "Intro Senate": "2020-02-10",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1254",
      "id": "s1254",
      "Summary":
          "Amends the: Australian Curriculum, Assessment and Reporting Authority Act 2008 to require the Australian Curriculum, Assessment and Reporting Authority to ensure that school education provides a balanced presentation of opposing views on political, historical and scientific issues; and Australian Education Act 2013 to make financial assistance to a state or territory conditional on the state or territory having certain laws in force.",
      "Sponsor": "HANSON,SenPauline",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1254_first-senate/toc_word/20S0220.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1254_first-senate/toc_pdf/20S0220.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1254_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1254_ems_2862fcdb-e6fb-4ff1-b470-7288c6fff241/upload_word/20S02em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1254_ems_2862fcdb-e6fb-4ff1-b470-7288c6fff241/upload_pdf/20S02em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1254_ems_2862fcdb-e6fb-4ff1-b470-7288c6fff241%22",
      "Yes": 6681,
      "No": 6584
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Australian Institute of Health and Welfare Amendment (Assisted Reproductive Treatment Statistics) 2019",
      "Intro Senate": "2019-07-04",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1214",
      "id": "s1214",
      "Summary":
          "Amends the Australian Institute of Health and Welfare Act 1987 to require accredited assisted reproductive technology (ART) centres to provide certain statistical information to the Australian Institute of Health and Welfare (AIHW) and require the AIHW to publish this statistical information and a list of non-complying accredited ART centres.",
      "Sponsor": "GRIFF,SenStirling",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1214_first-senate/toc_word/19S0120.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1214_first-senate/toc_pdf/19S0120.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1214_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1214_ems_3dbb231a-3057-4652-8ff6-9a384db40869/upload_word/19S01em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1214_ems_3dbb231a-3057-4652-8ff6-9a384db40869/upload_pdf/19S01em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1214_ems_3dbb231a-3057-4652-8ff6-9a384db40869%22",
      "Yes": 6187,
      "No": 2909
    },
    {
      "Chamber": "Senate",
      "Short Title": "Australian Multicultural 2018",
      "Intro Senate": "2018-08-23",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1143",
      "id": "s1143",
      "Summary":
          "The bill: enshrines the principles of diversity and multiculturalism; establishes the Australian Multicultural Commission and provides for its functions, powers, constitution, operation and inquiries; and provides for annual reporting requirements for Commonwealth entities.",
      "Sponsor": "DINATALE,SenRichard",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1143_first-senate/toc_word/1817620.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1143_first-senate/toc_pdf/1817620.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1143_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1143_ems_e61c8a43-68bc-4cde-b0f8-b817f5fa0b45/upload_word/18176em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1143_ems_e61c8a43-68bc-4cde-b0f8-b817f5fa0b45/upload_pdf/18176em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1143_ems_e61c8a43-68bc-4cde-b0f8-b817f5fa0b45%22",
      "Yes": 5446,
      "No": 5000
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Australian Research Council Amendment (Ensuring Research Independence) 2018",
      "Intro Senate": "2018-11-15",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1150",
      "id": "s1150",
      "Summary":
          "Amends the Australian Research Council Act 2001 to remove ministerial discretion in relation to the approval of research grants administered by the Australian Research Council.",
      "Sponsor": "FARUQI,SenMehreen",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1150_first-senate/toc_word/1823120.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1150_first-senate/toc_pdf/1823120.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1150_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1150_ems_c72285ea-587e-409c-b5b3-aee71e45ede3/upload_word/18231em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1150_ems_c72285ea-587e-409c-b5b3-aee71e45ede3/upload_pdf/18231em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1150_ems_c72285ea-587e-409c-b5b3-aee71e45ede3%22",
      "Yes": 218,
      "No": 3293
    },
    {
      "Chamber": "Senate",
      "Short Title": "Banking Amendment (Deposits) 2020",
      "Intro Senate": "2020-02-27",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1257",
      "id": "s1257",
      "Summary":
          "Amends the Banking Act 1959 to: provide that the conversion and write-off provisions do not extend to the bail-in of deposit accounts; and provide that nothing in the Act or other Commonwealth legislation gives the Australian Prudential Regulation Authority the power to implement, authorise or direct the implementation of bail-in of deposit accounts.",
      "Sponsor": "ROBERTS,SenMalcolm",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1257_first-senate/toc_word/20S0520.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1257_first-senate/toc_pdf/20S0520.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1257_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1257_ems_766940af-489b-46df-a319-1d9d35a17e22/upload_word/20S05em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1257_ems_766940af-489b-46df-a319-1d9d35a17e22/upload_pdf/20S05em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1257_ems_766940af-489b-46df-a319-1d9d35a17e22%22",
      "Yes": 465,
      "No": 4698
    },
    {
      "Chamber": "Senate",
      "Short Title": "Broadcasting Services Amendment (Audio Description) 2019",
      "Intro Senate": "2019-02-12",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1174",
      "id": "s1174",
      "Summary":
          "Amends the Broadcasting Services Act 1992 to: require national broadcasters, commercial television broadcasting licensees and subscription television licensees to provide a minimum number of hours of television audio description per week; and provide for the Australian Communications and Media Authority to enforce and review the new requirement.",
      "Sponsor": "STEELE-JOHN,SenJordon",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1174_first-senate/toc_word/1904320.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1174_first-senate/toc_pdf/1904320.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1174_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1174_ems_ab14d63b-1a59-4f6f-95ee-bd34768aa4b8/upload_word/19043em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1174_ems_ab14d63b-1a59-4f6f-95ee-bd34768aa4b8/upload_pdf/19043em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1174_ems_ab14d63b-1a59-4f6f-95ee-bd34768aa4b8%22",
      "Yes": 5843,
      "No": 1456
    },
    {
      "Chamber": "Senate",
      "Short Title": "Coal-Fired Power Funding Prohibition 2017",
      "Intro Senate": "2017-10-17",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1094",
      "id": "s1094",
      "Summary":
          "Prohibits the Commonwealth government or its agencies from funding the refurbishment, building or purchase, or assisting in the transfer of ownership, of a coal-fired power station.",
      "Sponsor": "DINATALE,SenRichard",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1094_first-senate/toc_word/1724520.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1094_first-senate/toc_pdf/1724520.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1094_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1094_ems_e8b7ec7b-e104-425d-a5a5-66d57dee2bf2/upload_word/17245em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1094_ems_e8b7ec7b-e104-425d-a5a5-66d57dee2bf2/upload_pdf/17245em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1094_ems_e8b7ec7b-e104-425d-a5a5-66d57dee2bf2%22",
      "Yes": 6916,
      "No": 2459
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Commonwealth Electoral Amendment (Donation Reform and Other Measures) 2020",
      "Intro Senate": "2020-02-05",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1244",
      "id": "s1244",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 to: extend the definition of reporting entities to include political entities, campaigners, associated entities and third parties; lower the political donation disclosure threshold from AUD 14 000 to AUD 2500; require disclosure by reporting entities and donors when the sum of the gifts and donations provided by the same donor to the same reporting entity is greater than the disclosure threshold; require disclosure by reporting entities within 7 days of a reportable gift being made, and require disclosure within 7 days of any subsequent gifts until the end of the reporting period; require reporting entities to lodge half-yearly returns with details of the nature and source of all reportable donations and other receipts; require reporting entities to hold an electoral expenditure account with an authorised deposit-taking institution, from which all electoral expenditure must be paid; increase the monitoring and investigatory powers of the Australian Electoral Commission; and provide for infringement notices and civil penalty provisions for reporting entities that fail to meet their disclosure obligations.",
      "Sponsor": "LAMBIE,SenJacqui",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1244_first-senate/toc_word/20S0120.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1244_first-senate/toc_pdf/20S0120.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1244_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1244_ems_3ea7bfd2-34aa-4d93-b5bf-f2367305417b/upload_word/20S01em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1244_ems_3ea7bfd2-34aa-4d93-b5bf-f2367305417b/upload_pdf/20S01em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1244_ems_3ea7bfd2-34aa-4d93-b5bf-f2367305417b%22",
      "Yes": 1185,
      "No": 9395
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Commonwealth Electoral Amendment (Lowering Voting Age and Increasing Voter Participation) 2018",
      "Intro Senate": "2018-06-18",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1130",
      "id": "s1130",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 and Referendum (Machinery Provisions) Act 1984 to: lower the minimum (non-compulsory) voting age in Australian federal elections and referenda from 18 to 16 years; allow 14 and 15 year olds to be added to the electoral roll in preparation for their eligibility to vote at 16 years of age; provide for 16 and 17 year olds to be included in the certified list of voters (but not to be given a penalty notice if they do not vote); and provide that an eligible voter, who is not yet on the electoral roll or enrolled at their correct address, is able to cast a provisional vote on election day.",
      "Sponsor": "STEELE-JOHN,SenJordon",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1130_first-senate/toc_word/1812420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1130_first-senate/toc_pdf/1812420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1130_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1130_ems_0aca1f6c-38bf-405d-9020-044c444a69f1/upload_word/18124em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1130_ems_0aca1f6c-38bf-405d-9020-044c444a69f1/upload_pdf/18124em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1130_ems_0aca1f6c-38bf-405d-9020-044c444a69f1%22",
      "Yes": 703,
      "No": 7751
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Commonwealth Electoral Amendment (Transparency Measures Lowering the Disclosure Threshold) 2019",
      "Intro Senate": "2019-11-27",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1238",
      "id": "s1238",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 to: lower the political donation disclosure threshold from AUD 13,800 to AUD 1000; and remove the indexation of the disclosure threshold.",
      "Sponsor": "FARRELL,SenDon",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1238_first-senate/toc_word/19S1420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1238_first-senate/toc_pdf/19S1420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1238_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1238_ems_1cd63b88-5576-4edc-b532-4b3890f5de5f/upload_word/19S14em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1238_ems_1cd63b88-5576-4edc-b532-4b3890f5de5f/upload_pdf/19S14em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1238_ems_1cd63b88-5576-4edc-b532-4b3890f5de5f%22",
      "Yes": 8060,
      "No": 8373
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Commonwealth Electoral Amendment (Transparency Measures Real Time Disclosure) 2019",
      "Intro Senate": "2019-11-27",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1239",
      "id": "s1239",
      "Summary":
          "Amends the Commonwealth Electoral Act 1918 to require political parties and their associated entities, candidates, and Senate groups to provide a disclosure return to the Australian Electoral Commission of all political donations and gift received at or above the disclosure threshold of AUD 14 000 within seven days of receiving the donation or gift.",
      "Sponsor": "FARRELL,SenDon",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1239_first-senate/toc_word/19S1520.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1239_first-senate/toc_pdf/19S1520.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1239_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1239_ems_6ea7c59e-7e11-40a0-a739-4222a4690597/upload_word/19S15em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1239_ems_6ea7c59e-7e11-40a0-a739-4222a4690597/upload_pdf/19S15em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1239_ems_6ea7c59e-7e11-40a0-a739-4222a4690597%22",
      "Yes": 7975,
      "No": 6976
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Competition and Consumer Amendment (Prevention of Exploitation of Indigenous Cultural Expressions) 2019",
      "Intro Senate": "2019-02-12",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1170",
      "id": "s1170",
      "Summary":
          "Amends the Competition and Consumer Act 2010 to make it an offence to supply or offer commercial goods to a consumer that include Indigenous cultural expression unless supplied by, or in accordance with a transparent arrangement with, an Indigenous artist or relevant Indigenous community.",
      "Sponsor": "HANSON-YOUNG,SenSarah",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1170_first-senate/toc_word/1904420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1170_first-senate/toc_pdf/1904420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1170_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1170_ems_153d26d0-4eac-46ce-989a-39ad0a57bda7/upload_word/19044em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1170_ems_153d26d0-4eac-46ce-989a-39ad0a57bda7/upload_pdf/19044em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1170_ems_153d26d0-4eac-46ce-989a-39ad0a57bda7%22",
      "Yes": 6119,
      "No": 638
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Competition and Consumer Amendment (Truth in Labelling Palm Oil) 2017",
      "Intro Senate": "2017-06-21",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1074",
      "id": "s1074",
      "Summary":
          "Amends the Competition and Consumer Act 2010 to require the minister to make an information standard for goods containing palm oil and ensure that the information standard is in force at all times.",
      "Sponsor": "XENOPHON,SenNick",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1074_first-senate/toc_word/1714920.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1074_first-senate/toc_pdf/1714920.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1074_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1074_ems_96b4ad0a-54d8-4091-bcdd-a6cfb69a9d55/upload_word/17149em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1074_ems_96b4ad0a-54d8-4091-bcdd-a6cfb69a9d55/upload_pdf/17149em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1074_ems_96b4ad0a-54d8-4091-bcdd-a6cfb69a9d55%22",
      "Yes": 2173,
      "No": 143
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Constitution Alteration (Freedom of Expression and Freedom of the Press) 2019",
      "Intro Senate": "2019-07-04",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1212",
      "id": "s1212",
      "Summary":
          "Subject to approval in accordance with section 128 of the Constitution, the bill proposes an alteration to the Constitution to provide that the Commonwealth, States and Territories must not limit freedom of expression, including freedom of the press and other media.",
      "Sponsor": "GRIFF,SenStirlingPATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1212_first-senate/toc_word/19S0220.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1212_first-senate/toc_pdf/19S0220.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1212_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1212_ems_64ae0ecf-c63d-40b3-a1ab-b08e16d57ff4/upload_word/19S02em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1212_ems_64ae0ecf-c63d-40b3-a1ab-b08e16d57ff4/upload_pdf/19S02em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1212_ems_64ae0ecf-c63d-40b3-a1ab-b08e16d57ff4%22",
      "Yes": 2661,
      "No": 6280
    },
    {
      "Chamber": "Senate",
      "Short Title": "Constitution Alteration (Water Resources) 2019",
      "Intro Senate": "2019-07-04",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1213",
      "id": "s1213",
      "Summary":
          "Subject to approval in accordance with section 128 of the Constitution, the bill proposes an alteration to the Constitution to: provide the Commonwealth with the power to make laws in relation to the use and management of water resources that extend beyond the limits of a state; and ensure that any Commonwealth law relating to water resources does not have an overall detrimental effect on the environment.",
      "Sponsor": "PATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1213_first-senate/toc_word/19S0320.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1213_first-senate/toc_pdf/19S0320.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1213_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1213_ems_bc1248bb-ff8e-4c35-b2d7-d7ee4b5525c6/upload_word/19S03em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1213_ems_bc1248bb-ff8e-4c35-b2d7-d7ee4b5525c6/upload_pdf/19S03em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1213_ems_bc1248bb-ff8e-4c35-b2d7-d7ee4b5525c6%22",
      "Yes": 7280,
      "No": 369
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Crimes Legislation Amendment (Combatting Corporate Crime) 2019",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1246",
      "id": "s1246",
      "Summary":
          "Amends: the Criminal Code Act 1995 to: amend the offence of bribery of a foreign public official to extend the definition of foreign public official to include a candidate for office, remove the requirement that the foreign official must be influenced in the exercise of the official's duties, replace the requirement that a benefit and business advantage must be 'not legitimately due' with the concept of 'improperly influencing' a foreign public official, and extend the offence to cover bribery to obtain a personal advantage; and create a new offence of failure of a body corporate to prevent foreign bribery by an associate; the Director of Public Prosecutions Act,1983 to implement a Commonwealth Deferred Prosecution Agreement scheme to enable the Commonwealth Director of Public Prosecutions to invite a person that has engaged in serious corporate crime to negotiate an agreement to comply with a range of specified conditions; and five Acts to make consequential amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1246_first-senate/toc_word/1922120.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1246_first-senate/toc_pdf/1922120.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1246_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1246_ems_15fd8d10-4450-4e77-9a87-a42506676059/upload_word/722648em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1246_ems_15fd8d10-4450-4e77-9a87-a42506676059/upload_pdf/722648em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1246_ems_15fd8d10-4450-4e77-9a87-a42506676059%22",
      "Yes": 7885,
      "No": 5607
    },
    {
      "Chamber": "Senate",
      "Short Title": "Customs Amendment (Safer Cladding) 2019",
      "Intro Senate": "2019-09-10",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1231",
      "id": "s1231",
      "Summary":
          "Amends the Customs Act 1901 to prohibit the importation of polyethylene core aluminium composite panels.",
      "Sponsor": "PATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1231_first-senate/toc_word/19S0720.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1231_first-senate/toc_pdf/19S0720.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1231_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1231_ems_e8a601a4-1b1c-4eba-8105-82a49b77ae01/upload_word/19S07em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1231_ems_e8a601a4-1b1c-4eba-8105-82a49b77ae01/upload_pdf/19S07em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1231_ems_e8a601a4-1b1c-4eba-8105-82a49b77ae01%22",
      "Yes": 2466,
      "No": 3866
    },
    {
      "Chamber": "Senate",
      "Short Title": "Discrimination Free Schools 2018",
      "Intro Senate": "2018-10-16",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1147",
      "id": "s1147",
      "Summary":
          "Amends the: Sex Discrimination Act 1984 to remove the exemption for religious educational institutions to discriminate against students and teachers on the basis of gender, sexual orientation, gender identification, marital or relationship status or pregnancy; and Fair Work Act 2009 to ensure that religious exemptions from anti-discrimination provisions do not extend to educational institutions.",
      "Sponsor": "DINATALE,SenRichard",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1147_first-senate/toc_word/1821920.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1147_first-senate/toc_pdf/1821920.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1147_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1147_ems_56495903-a153-48b7-a04b-14013a24979c/upload_word/18219em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1147_ems_56495903-a153-48b7-a04b-14013a24979c/upload_pdf/18219em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1147_ems_56495903-a153-48b7-a04b-14013a24979c%22",
      "Yes": 1235,
      "No": 3711
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Environment and Infrastructure Legislation Amendment (Stop Adani) 2017",
      "Intro Senate": "2017-06-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1067",
      "id": "s1067",
      "Summary":
          "Amends the: Environment Protection and Biodiversity Conservation Act 1999 to impose additional obligations on the minister in making decisions on approvals and conditions; and Northern Australia Infrastructure Facility Act 2016 to: require the Northern Australia Infrastructure Facility to assess whether an entity is a suitable person for the purposes of providing financial assistance for Northern Australia economic infrastructure; and provide that, in undertaking an assessment, the facility consults with the Australian Securities and Investments Commission and the Australian Crime Commission. Also provides for a review of certain existing approvals under the Environment Protection and Biodiversity Conservation Act 1999 in relation to the Adani group.",
      "Sponsor": "WATERS,SenLarissa",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1067_first-senate/toc_word/1712920.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1067_first-senate/toc_pdf/1712920.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1067_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1067_ems_c4dd6fcb-f450-40f0-bfae-739c63d80e4c/upload_word/17129em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1067_ems_c4dd6fcb-f450-40f0-bfae-739c63d80e4c/upload_pdf/17129em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1067_ems_c4dd6fcb-f450-40f0-bfae-739c63d80e4c%22",
      "Yes": 4706,
      "No": 3567
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Environment Protection and Biodiversity Conservation Amendment (Climate Trigger) 2020",
      "Intro Senate": "2020-02-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1255",
      "id": "s1255",
      "Summary":
          "Amends the Environment Protection and Biodiversity Conservation Act 1999 to introduce penalties for an individual or body corporate undertaking actions which involve mining operations, drilling exploration, land clearing or is specified in the regulations (emissions-intensive actions) if the action has, will have or is likely to have a significant impact on the environment.",
      "Sponsor": "HANSON-YOUNG,SenSarah",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1255_first-senate/toc_word/20S0320.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1255_first-senate/toc_pdf/20S0320.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1255_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1255_ems_e4e9ea76-7475-456e-bacf-8b9c372dc0ff/upload_word/20S03em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1255_ems_e4e9ea76-7475-456e-bacf-8b9c372dc0ff/upload_pdf/20S03em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1255_ems_e4e9ea76-7475-456e-bacf-8b9c372dc0ff%22",
      "Yes": 7473,
      "No": 7322
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Fair Work Amendment (Restoring Penalty Rates) 2018 [No. 2]",
      "Intro Senate": "2018-11-14",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1152",
      "id": "s1152",
      "Summary":
          "Amends the Fair Work Act 2009 to: provide that modern awards cannot be varied to reduce penalty rates or the hours to which penalties rates apply if the variation is likely to result in a reduction in the take-home pay of an employee; and provide that any such determination by the Fair Work Commission made on or after 21 June 2017 is of no effect.",
      "Sponsor": "CAMERON,SenDoug",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1152_first-senate/toc_word/1822920revised.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1152_first-senate/toc_pdf/1822920revised.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1152_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1152_ems_7a7efb3e-34d6-4a81-9a03-53dc1c4eb6a1/upload_word/18229em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1152_ems_7a7efb3e-34d6-4a81-9a03-53dc1c4eb6a1/upload_pdf/18229em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1152_ems_7a7efb3e-34d6-4a81-9a03-53dc1c4eb6a1%22",
      "Yes": 9586,
      "No": 3425
    },
    {
      "Chamber": "Senate",
      "Short Title": "Family Law (Self-Assessment) 2019",
      "Intro Senate": "2019-09-12",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1232",
      "id": "s1232",
      "Summary":
          "Requires separating couples to self-assess and narrow their family law disputes promptly within a defined statutory time frame.",
      "Sponsor": "HANSON,SenPauline",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1232_first-senate/toc_word/19S0920.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1232_first-senate/toc_pdf/19S0920.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1232_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1232_ems_6aa397b5-c15d-4e6d-a7b0-f022a8fac231/upload_word/19S09em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1232_ems_6aa397b5-c15d-4e6d-a7b0-f022a8fac231/upload_pdf/19S09em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1232_ems_6aa397b5-c15d-4e6d-a7b0-f022a8fac231%22",
      "Yes": 7653,
      "No": 1222
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Freedom of Information Legislation Amendment (Improving Access and Transparency) 2018",
      "Intro Senate": "2018-08-22",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1142",
      "id": "s1142",
      "Summary":
          "Amends the: Archives Act 1983 to require the reporting of external legal expenses incurred by the National Archives of Australia; Australian Information Commissioner Act 2010 to: ensure that the Information Commissioner holds specified qualifications; and require the separate appointment of the Australian Information Commissioner, the Privacy Commissioner and the Freedom of Information (FOI) Commissioner; and Freedom of Information Act 1982 to: enable the transfer of Information Commissioner reviewable decisions to the Administrative Appeals Tribunal (AAT); require the consistent application of exemptions by decision makers in the context of a review by the Information Commissioner; prevent the Information Commissioner from making FOI decisions if he or she does not hold specified qualifications; prevent agencies from publishing FOI information until at least 10 days after the applicant has received his or her copy of the information; and require the reporting of external legal expenses for each Information Commission or AAT FOI matter that has concluded.",
      "Sponsor": "PATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1142_first-senate/toc_word/1817420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1142_first-senate/toc_pdf/1817420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1142_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1142_ems_6ab16212-a81e-45c0-91cd-8d0095bca254/upload_word/18174em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1142_ems_6ab16212-a81e-45c0-91cd-8d0095bca254/upload_pdf/18174em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1142_ems_6ab16212-a81e-45c0-91cd-8d0095bca254%22",
      "Yes": 2339,
      "No": 5230
    },
    {
      "Chamber": "Senate",
      "Short Title": "Galilee Basin (Coal Prohibition) 2018",
      "Intro Senate": "2018-12-05",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1167",
      "id": "s1167",
      "Summary":
          "Prohibits the mining of thermal coal in the Galilee Basin in Queensland.",
      "Sponsor": "WATERS,SenLarissa",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1167_first-senate/toc_word/1828420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1167_first-senate/toc_pdf/1828420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1167_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1167_ems_5d3f13ec-2335-4eef-8d1f-671d5c2f9d3f/upload_word/18284em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1167_ems_5d3f13ec-2335-4eef-8d1f-671d5c2f9d3f/upload_pdf/18284em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1167_ems_5d3f13ec-2335-4eef-8d1f-671d5c2f9d3f%22",
      "Yes": 6827,
      "No": 9404
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Governor-General Amendment (Cessation of Allowances in the Public Interest) 2019",
      "Intro Senate": "2019-11-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1240",
      "id": "s1240",
      "Summary":
          "Amends the Governor-General Act 1974 to cease the payment of allowances to a former Governor-General, or a spouse of the former Governor-General, where they have engaged in serious misconduct.",
      "Sponsor": "SIEWERT,SenRachel",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1240_first-senate/toc_word/19S1320.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1240_first-senate/toc_pdf/19S1320.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1240_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1240_ems_bde09851-bbed-49c8-9e1d-ca1a31ed1035/upload_word/19S13em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1240_ems_bde09851-bbed-49c8-9e1d-ca1a31ed1035/upload_pdf/19S13em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1240_ems_bde09851-bbed-49c8-9e1d-ca1a31ed1035%22",
      "Yes": 9207,
      "No": 5740
    },
    {
      "Chamber": "Senate",
      "Short Title": "Great Australian Bight Environment Protection 2019",
      "Intro Senate": "2019-07-25",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1215",
      "id": "s1215",
      "Summary":
          "The bill: prohibits mining activities, including prospecting or exploring for minerals or other geological material, in the Great Australian Bight marine area; establishes civil penalties for mining in the Bight; and requires the minister to submit the Great Australian Bight for consideration as a World Heritage Site.",
      "Sponsor": "HANSON-YOUNG,SenSarah",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1215_first-senate/toc_word/19S0620.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1215_first-senate/toc_pdf/19S0620.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1215_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1215_ems_13594e8d-b5a6-44fc-bc65-be598d64b30e/upload_word/19S06em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1215_ems_13594e8d-b5a6-44fc-bc65-be598d64b30e/upload_pdf/19S06em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1215_ems_13594e8d-b5a6-44fc-bc65-be598d64b30e%22",
      "Yes": 2729,
      "No": 2256
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Human Rights (Parliamentary Scrutiny) Amendment (Australian Freedoms) 2019",
      "Intro Senate": "2019-07-23",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1217",
      "id": "s1217",
      "Summary":
          "Amends the Human Rights (Parliamentary Scrutiny) Act 2011 to: include a definition of 'Australian freedoms'; require the Parliamentary Joint Committee on Human Rights to explicitly consider 'Australian freedoms' in its examinations of legislation; and require statements of compatibility for bills and disallowable legislative instruments to provide certain information in relation to 'Australian freedoms'.",
      "Sponsor": "BERNARDI,SenCory",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1217_first-senate/toc_word/19S0520.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1217_first-senate/toc_pdf/19S0520.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1217_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1217_ems_a56cc723-5f21-48ba-a624-66544725ccf3/upload_word/19S05em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1217_ems_a56cc723-5f21-48ba-a624-66544725ccf3/upload_pdf/19S05em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1217_ems_a56cc723-5f21-48ba-a624-66544725ccf3%22",
      "Yes": 2654,
      "No": 1829
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Human Services Amendment (Photographic Identification and Fraud Prevention) 2019",
      "Intro Senate": "2019-02-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1173",
      "id": "s1173",
      "Summary":
          "Amends the Human Services (Medicare) Act 1973 to require photographic identification on all Medicare cards to reduce fraudulent usage of Medicare cards.",
      "Sponsor": "HANSON,SenPauline",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1173_first-senate/toc_word/1904720.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1173_first-senate/toc_pdf/1904720.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1173_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1173_ems_21693583-b3f0-4716-b92b-5d5e4e3cb462/upload_word/19047em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1173_ems_21693583-b3f0-4716-b92b-5d5e4e3cb462/upload_pdf/19047em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1173_ems_21693583-b3f0-4716-b92b-5d5e4e3cb462%22",
      "Yes": 6830,
      "No": 6024
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Intellectual Property Laws Amendment (Productivity Commission Response Part 2 and Other Measures) 2019",
      "Intro Senate": "2019-07-25",
      "Passed Senate": "",
      "Intro House": "2019-10-16",
      "Passed House": "2020-02-05",
      "Assent Date": "2020-02-26",
      "Act No.": "9",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1216",
      "id": "s1216",
      "Summary":
          "Amends the Patents Act 1990 to: introduce an objects clause; phase out the innovation patent system; replace the \u2018reasonable requirements of the public\u2019 test in relation to applications for a compulsory licence with a public interest test; provide that only the patentee of a dependent patent can seek a compulsory licence over the use of the original patent; provide for 'omnibus claims' in patent specifications to be removed at stages of consideration subsequent to examination; clarify the Commissioner of Patents\u2019 power to redact sensitive information from patent documents; remove the requirement to file a certificate of verification for documents translated into English, unless required by the regulations; clarify that Crown use can be invoked for the provision of a service that any Commonwealth, state or territory government has the primary responsibility for providing or funding; require governments to seek negotiated outcomes with patent owners before invoking Crown use; and require ministerial authorisation for invoking Crown use if a negotiated outcome is unsuccessful or in emergency situations; Designs Act 2003 to modify provisions relating to Crown use consistently with the changes to the Patents Act 2003; and Patents Act 1990 and Trade Marks Act 1995 to enable the Patent Office and Trade Mark Office to keep and use their official seal in electronic form when supplying electronic certified copies of documents to customers.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1216_first-senate/toc_word/1912120.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1216_first-senate/toc_pdf/1912120.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1216_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1216_ems_2d30b94a-4f04-46e8-bbe4-4be1e39bad05/upload_word/712877em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1216_ems_2d30b94a-4f04-46e8-bbe4-4be1e39bad05/upload_pdf/712877em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1216_ems_2d30b94a-4f04-46e8-bbe4-4be1e39bad05%22",
      "Yes": 6504,
      "No": 1183
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Intelligence and Security Legislation Amendment (Implementing Independent Intelligence Review) 2020",
      "Intro Senate": "2020-02-26",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1256",
      "id": "s1256",
      "Summary":
          "Amends: the Inspector-General of Intelligence and Security Act 1986 and Intelligence Services Act 2001 to expand the oversight role of the Inspector-General of Intelligence and Security (IGIS) and the Parliamentary Joint Committee on Intelligence and Security (PJCIS) to the Australian Federal Police, Department of Immigration and Border Protection, Australian Criminal Intelligence Commission and the Office of National Intelligence (ONI); the Independent National Security Legislation Monitor Act 2010 and Intelligence Services Act 2001 to enable the PJCIS to request briefings and reports from the Independent National Security Legislation Monitor; and the Inspector-General of Intelligence and Security Act 1986 and Office of National Intelligence Act 2018 to require regular briefings to be given to the PJCIS by the IGIS and ONI.",
      "Sponsor": "MCALLISTER,SenJenny",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1256_first-senate/toc_word/20S0420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1256_first-senate/toc_pdf/20S0420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1256_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1256_ems_a99cd29d-5571-45ea-b5d6-c9e30ed67d8c/upload_word/20S04em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1256_ems_a99cd29d-5571-45ea-b5d6-c9e30ed67d8c/upload_pdf/20S04em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1256_ems_a99cd29d-5571-45ea-b5d6-c9e30ed67d8c%22",
      "Yes": 8615,
      "No": 2812
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Intelligence Services Amendment (Enhanced Parliamentary Oversight of Intelligence Agencies) 2018",
      "Intro Senate": "2018-08-14",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1140",
      "id": "s1140",
      "Summary":
          "Amends the Intelligence Services Act 2001 to expand the functions of the Parliamentary Joint Committee on Intelligence and Security to include reviewing the activities of Australia\u2019s national security and intelligence agencies, subject to certain exclusions.",
      "Sponsor": "PATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1140_first-senate/toc_word/1815420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1140_first-senate/toc_pdf/1815420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1140_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1140_ems_f3fa007b-88bb-4610-9e4d-00d99a1e5a0a/upload_word/18154em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1140_ems_f3fa007b-88bb-4610-9e4d-00d99a1e5a0a/upload_pdf/18154em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1140_ems_f3fa007b-88bb-4610-9e4d-00d99a1e5a0a%22",
      "Yes": 3517,
      "No": 9066
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Landholders\u2014\u0080\u0099 Right to Refuse (Gas and Coal) 2015",
      "Intro Senate": "2015-08-31",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s996",
      "id": "s996",
      "Summary":
          "The bill: provides that Australian landholders have the right to refuse the undertaking of gas and coal mining activities by corporations on their land without prior written authorisation; sets out the requirements of a prior written authorisation; provides for relief which a court may grant a land owner when prior written authorisation is not provided; prohibits hydraulic fracturing for coal seam gas, shale gas and tight gas by corporations; and provides for civil penalties.",
      "Sponsor": "WATERS,SenLarissa",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s996_first-senate/toc_word/1502820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s996_first-senate/toc_pdf/1502820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs996_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s996_ems_df7d7de1-42d4-4c22-b8c1-989fee1a9748/upload_word/15028em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s996_ems_df7d7de1-42d4-4c22-b8c1-989fee1a9748/upload_pdf/15028em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs996_ems_df7d7de1-42d4-4c22-b8c1-989fee1a9748%22",
      "Yes": 7333,
      "No": 1509
    },
    {
      "Chamber": "Senate",
      "Short Title": "Live Animal Export (Slaughter) Prohibition 2019",
      "Intro Senate": "2019-07-04",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1202",
      "id": "s1202",
      "Summary":
          "Amends the Export Control Act 1982 to prohibit the export of live-stock for slaughter.",
      "Sponsor": "FARUQI,SenMehreen",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1202_first-senate/toc_word/19S0420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1202_first-senate/toc_pdf/19S0420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1202_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1202_ems_84094633-16b7-4b46-89a9-5f4fb4ee4dd7/upload_word/19S04em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1202_ems_84094633-16b7-4b46-89a9-5f4fb4ee4dd7/upload_pdf/19S04em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1202_ems_84094633-16b7-4b46-89a9-5f4fb4ee4dd7%22",
      "Yes": 7978,
      "No": 609
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Marine Safety (Domestic Commercial Vessel) National Law Amendment (Improving Safety) 2019",
      "Intro Senate": "2019-12-05",
      "Passed Senate": "2020-02-10",
      "Intro House": "2020-02-11",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1248",
      "id": "s1248",
      "Summary":
          "Amends the Marine Safety (Domestic Commercial Vessel) National Law Act 2012 to require masters of certain vessels to conduct two headcounts of passengers, one at the start of a voyage and one at the end.",
      "Sponsor": "STERLE,SenGlenn",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1248_first-senate/toc_word/19S2020.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1248_first-senate/toc_pdf/19S2020.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1248_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1248_ems_55211ee9-0b50-4a0a-9cd9-6a5247efaf5d/upload_word/19S20em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1248_ems_55211ee9-0b50-4a0a-9cd9-6a5247efaf5d/upload_pdf/19S20em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1248_ems_55211ee9-0b50-4a0a-9cd9-6a5247efaf5d%22",
      "Yes": 5550,
      "No": 7097
    },
    {
      "Chamber": "Senate",
      "Short Title": "Ministers of State (Checks for Security Purposes) 2019",
      "Intro Senate": "2019-02-12",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1175",
      "id": "s1175",
      "Summary":
          "Requires the Prime Minister to direct the Director-General of Security to provide a report on matters relating to security arising from examination of the personal background and circumstances of all current and future ministers of state.",
      "Sponsor": "PATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1175_first-senate/toc_word/1904520.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1175_first-senate/toc_pdf/1904520.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1175_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1175_ems_09e51466-8703-4796-b1b9-34185a51b8ea/upload_word/19045em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1175_ems_09e51466-8703-4796-b1b9-34185a51b8ea/upload_pdf/19045em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1175_ems_09e51466-8703-4796-b1b9-34185a51b8ea%22",
      "Yes": 7845,
      "No": 1291
    },
    {
      "Chamber": "Senate",
      "Short Title": "Murray-Darling Basin Commission of Inquiry 2019",
      "Intro Senate": "2019-02-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1187",
      "id": "s1187",
      "Summary":
          "Establishes a commission of inquiry, with the same powers as a royal commission, to inquire into the management of the Murray-Darling Basin water resources and related matters.",
      "Sponsor": "HANSON-YOUNG,SenSarah",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1187_first-senate/toc_word/1904820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1187_first-senate/toc_pdf/1904820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1187_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1187_ems_6cec1873-1b7c-44bb-9da4-a72f3d1e8d4b/upload_word/19048em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1187_ems_6cec1873-1b7c-44bb-9da4-a72f3d1e8d4b/upload_pdf/19048em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1187_ems_6cec1873-1b7c-44bb-9da4-a72f3d1e8d4b%22",
      "Yes": 9905,
      "No": 9262
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "National Consumer Credit Protection Amendment (Small Amount Credit Contract and Consumer Lease Reforms) 2019 (No. 2)",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1234",
      "id": "s1234",
      "Summary":
          "Amends the National Consumer Credit Protection Act 2009 to: impose a cap on the total payments that can be made under a consumer lease (known as rent-to-buy schemes); require small amount credit contracts (SACCs) (known as payday loans) to have equal repayment and payment intervals; remove the ability for SACC providers to charge monthly fees in respect of the residual term of a loan where a consumer fully repays the loan early; prevent lessors and credit assistance providers from undertaking door-to-door selling of leases at residential homes; introduce anti-avoidance protections; and increase penalties.",
      "Sponsor": "GRIFF,SenStirlingMCALLISTER,SenJenny",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1234_first-senate/toc_word/19S1620.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1234_first-senate/toc_pdf/19S1620.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1234_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1234_ems_5b7ea0db-8571-45b1-8c46-ab6e37943f00/upload_word/19S16em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1234_ems_5b7ea0db-8571-45b1-8c46-ab6e37943f00/upload_pdf/19S16em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1234_ems_5b7ea0db-8571-45b1-8c46-ab6e37943f00%22",
      "Yes": 3147,
      "No": 2069
    },
    {
      "Chamber": "Senate",
      "Short Title": "National Integrity (Parliamentary Standards) 2019",
      "Intro Senate": "2019-10-17",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1227",
      "id": "s1227",
      "Summary":
          "The bill: provides for statutory codes of conduct for the members of each house of parliament and their staff; creates a statutory basis for parliamentarians\u2019 registers of interests; establishes a Parliamentary Integrity Advisor to provide independent, confidential advice and guidance to parliamentarians and their staff in relation to the applicable codes of conduct; and establishes a Parliamentary Standards Commissioner to assist in the assessment, investigation and resolution of alleged breaches of the applicable codes of conduct.",
      "Sponsor": "WATERS,SenLarissa",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1227_first-senate/toc_word/19S1120.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1227_first-senate/toc_pdf/19S1120.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1227_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1227_ems_37fffc89-a092-486e-99c7-02a7340190cf/upload_word/19S11em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1227_ems_37fffc89-a092-486e-99c7-02a7340190cf/upload_pdf/19S11em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1227_ems_37fffc89-a092-486e-99c7-02a7340190cf%22",
      "Yes": 9386,
      "No": 9106
    },
    {
      "Chamber": "Senate",
      "Short Title": "National Integrity Commission 2018 (No. 2)",
      "Intro Senate": "2018-11-29",
      "Passed Senate": "2019-09-09",
      "Intro House": "2019-09-10",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1154",
      "id": "s1154",
      "Summary":
          "The bill: establishes the Australian National Integrity Commission as an independent public sector anti-corruption commission for the Commonwealth; provides for the appointment, functions and powers of the National Integrity Commissioner and commissioners; and makes consequential amendments to the Law Enforcement Integrity Commissioner Act 2006, Ombudsman Act 1976 and Public Interest Disclosure Act 2013.",
      "Sponsor": "WATERS,SenLarissa",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1154_first-senate/toc_word/1825820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1154_first-senate/toc_pdf/1825820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1154_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1154_ems_f8550d3e-0bc3-4996-905a-e731872b5c82/upload_word/18258em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1154_ems_f8550d3e-0bc3-4996-905a-e731872b5c82/upload_pdf/18258em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1154_ems_f8550d3e-0bc3-4996-905a-e731872b5c82%22",
      "Yes": 7601,
      "No": 5003
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "National Vocational Education and Training Regulator Amendment 2019",
      "Intro Senate": "2019-12-04",
      "Passed Senate": "2020-02-06",
      "Intro House": "2020-02-10",
      "Passed House": "2020-02-13",
      "Assent Date": "2020-02-26",
      "Act No.": "10",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1251",
      "id": "s1251",
      "Summary":
          "Amends the: National Vocational Education and Training Regulator Act 2011 in relation to: registration requirements, conditions and decision timings relating to National VET Regulator (NVR) registered training organisations (NVR RTOs); notification requirements for NVR RTOs in relation to changes to the operation of an NVR RTO or events likely to significantly affect an NVR RTO's ability to comply with the VET Quality Framework; reviewable decisions made by the delegate of the NVR; compliance standards and conditions for accredited courses; preparation and publication of audit reports by the NVR; electronic sharing and publication of information authorised by the NVR; information that the NVR is required to enter on the National Register; the NVR's powers to request documents in electronic form, use of enforceable undertakings and to allow for regulatory decisions to be stayed while under reconsideration; cancellation of VET qualifications and statements of attainment; the minister\u2019s powers to issue directions to, and determine certain fees charged by, the NVR; certain offence provisions relating to the delivery of a VET course; processes for the appointment of acting Commissioners, the Deputy Chief Commissioner and the Chief Commissioner of the NVR; and the NVR's annual operational and corporate plans; and to make a number of technical amendments; and National Vocational Education and Training Regulator (Transitional Provisions) Act 2011 to provide for transitional arrangements.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1251_first-senate/toc_word/1923620.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1251_first-senate/toc_pdf/1923620.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1251_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1251_ems_5a710be4-2b9c-47a5-ad30-2e0f36c5eafb/upload_word/723657em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1251_ems_5a710be4-2b9c-47a5-ad30-2e0f36c5eafb/upload_pdf/723657em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1251_ems_5a710be4-2b9c-47a5-ad30-2e0f36c5eafb%22",
      "Yes": 3816,
      "No": 2721
    },
    {
      "Chamber": "Senate",
      "Short Title": "Nuclear Fuel Cycle (Facilitation) 2017",
      "Intro Senate": "2017-11-14",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1098",
      "id": "s1098",
      "Summary":
          "Amends the Australian Radiation Protection and Nuclear Safety Act 1998 and Environment Protection and Biodiversity Conservation Act 1999 to remove prohibitions on the construction or operation of certain nuclear installations.",
      "Sponsor": "BERNARDI,SenCory",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1098_first-senate/toc_word/1725520.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1098_first-senate/toc_pdf/1725520.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1098_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1098_ems_de876f42-54dd-48ae-a0bd-d81e3539c8f2/upload_word/17255em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1098_ems_de876f42-54dd-48ae-a0bd-d81e3539c8f2/upload_pdf/17255em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1098_ems_de876f42-54dd-48ae-a0bd-d81e3539c8f2%22",
      "Yes": 2760,
      "No": 3445
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Product Stewardship Amendment (Packaging and Plastics) 2019",
      "Intro Senate": "2019-09-11",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1226",
      "id": "s1226",
      "Summary":
          "Amend the Product Stewardship Act 2011 to: establish a mandatory product stewardship scheme for manufacturers, importers and distributors of consumer packaging and certain single-use plastics; and prescribe targets, prohibitions, design and labelling requirements, and financial contributions in relation to packaging and products identified under the scheme.",
      "Sponsor": "WHISH-WILSON,SenPeter",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1226_first-senate/toc_word/19S0820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1226_first-senate/toc_pdf/19S0820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1226_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1226_ems_38b48e20-f649-4e48-8cfb-b4108424a320/upload_word/19S08em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1226_ems_38b48e20-f649-4e48-8cfb-b4108424a320/upload_pdf/19S08em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1226_ems_38b48e20-f649-4e48-8cfb-b4108424a320%22",
      "Yes": 9460,
      "No": 4726
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Productivity Commission Amendment (Addressing Inequality) 2017",
      "Intro Senate": "2017-06-14",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1066",
      "id": "s1066",
      "Summary":
          "Amends the Productivity Commission Act 1998 to: expand the functions of the Productivity Commission to include the undertaking of research on inequality and its effects on the Australian economy and community; require the commission to have regard in the exercise of its functions to the need to mitigate the negative effects of inequality; and provide for reporting requirements.",
      "Sponsor": "MCALLISTER,SenJenny",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1066_first-senate/toc_word/1708020.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1066_first-senate/toc_pdf/1708020.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1066_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1066_ems_7cb3a3b2-e2b4-4391-a8c0-a9ca349a36d2/upload_word/17080em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1066_ems_7cb3a3b2-e2b4-4391-a8c0-a9ca349a36d2/upload_pdf/17080em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1066_ems_7cb3a3b2-e2b4-4391-a8c0-a9ca349a36d2%22",
      "Yes": 1168,
      "No": 8342
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Public Governance, Performance and Accountability Amendment (Tax Transparency in Procurement and Grants) 2019",
      "Intro Senate": "2019-11-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1241",
      "id": "s1241",
      "Summary":
          "Amends the Public Governance, Performance and Accountability Act 2013 and Taxation Administration Act,1953 to impose disclosure, consideration and reporting requirements on government agencies and Commonwealth entities entering into contracts with companies or providing grants to persons or companies that are, or have related entities, domiciled in prescribed tax havens.",
      "Sponsor": "PATRICK,SenRex",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1241_first-senate/toc_word/19S1220.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1241_first-senate/toc_pdf/19S1220.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1241_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1241_ems_2caf8455-62e6-4672-9752-c576195c229a/upload_word/19S12em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1241_ems_2caf8455-62e6-4672-9752-c576195c229a/upload_pdf/19S12em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1241_ems_2caf8455-62e6-4672-9752-c576195c229a%22",
      "Yes": 7438,
      "No": 924
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Public Governance, Performance and Accountability Amendment (Waiver of Debt and Act of Grace Payments) 2019",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1242",
      "id": "s1242",
      "Summary":
          "Amends the Public Governance, Performance and Accountability Act 2013 to require the Department of Finance to state in its annual report the number of waivers of debt granted and act of grace payments made, and the total dollar amount of debt waived and act of grace payments made.",
      "Sponsor": "GALLAGHER,SenKaty",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1242_first-senate/toc_word/19S1720.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1242_first-senate/toc_pdf/19S1720.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1242_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1242_ems_bf89e6d8-4425-4b84-a37c-8e67056d0777/upload_word/19S17em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1242_ems_bf89e6d8-4425-4b84-a37c-8e67056d0777/upload_pdf/19S17em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1242_ems_bf89e6d8-4425-4b84-a37c-8e67056d0777%22",
      "Yes": 2823,
      "No": 4595
    },
    {
      "Chamber": "Senate",
      "Short Title": "Regional Forest Agreements Legislation (Repeal) 2017",
      "Intro Senate": "2017-09-07",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1083",
      "id": "s1083",
      "Summary":
          "The bill: repeals the Regional Forest Agreements Act 2002; and makes consequential amendments to the Environment Protection and Biodiversity Conservation Act 1999.",
      "Sponsor": "RICE,SenJanet",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1083_first-senate/toc_word/1719620.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1083_first-senate/toc_pdf/1719620.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1083_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1083_ems_1c560bad-ad44-486a-a1c9-7d4bff2ce235/upload_word/17196em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1083_ems_1c560bad-ad44-486a-a1c9-7d4bff2ce235/upload_pdf/17196em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1083_ems_1c560bad-ad44-486a-a1c9-7d4bff2ce235%22",
      "Yes": 4852,
      "No": 3978
    },
    {
      "Chamber": "Senate",
      "Short Title": "Saving Australian Dairy 2019",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1249",
      "id": "s1249",
      "Summary":
          "Amends the Competition and Consumer Act 2010 to: require the Australian Competition and Consumer Commission to determine a base minimum price for milk for each dairy season; require the minister to refer to the Productivity Commission for inquiry the effectiveness of determining a base price for milk and the potential effectiveness of a divestiture regime for the dairy industry; and establish a mandatory industry code for the food and grocery industry, including the dairy industry.",
      "Sponsor": "HANSON,SenPauline",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1249_first-senate/toc_word/19S1820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1249_first-senate/toc_pdf/19S1820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1249_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1249_ems_7091088c-6d8d-442f-ae37-8b8b13a24f39/upload_word/19S18em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1249_ems_7091088c-6d8d-442f-ae37-8b8b13a24f39/upload_pdf/19S18em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1249_ems_7091088c-6d8d-442f-ae37-8b8b13a24f39%22",
      "Yes": 314,
      "No": 1608
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Social Services Legislation Amendment (Ending the Poverty Trap) 2018",
      "Intro Senate": "2018-09-10",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1144",
      "id": "s1144",
      "Summary":
          "Amends the: Social Security Act 1991 to: increase the maximum single rates of newstart allowance, youth allowance (away from home rates only), austudy, sickness allowance, special benefit, widow allowance and crisis payment by AUD 150 a fortnight; standardise the indexation arrangements for certain pensions and allowances; and make amendments contingent on the commencement of the Social Services Legislation Amendment (Welfare Reform) Act 2018; and Social Security (Administration) Act 1999 to provide that these payments are made from monies appropriated by the Parliament.",
      "Sponsor": "SIEWERT,SenRachel",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1144_first-senate/toc_word/1818820.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1144_first-senate/toc_pdf/1818820.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1144_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1144_ems_5bf10e44-8f1c-4cb5-8bf5-0875a2bf2e9b/upload_word/18188em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1144_ems_5bf10e44-8f1c-4cb5-8bf5-0875a2bf2e9b/upload_pdf/18188em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1144_ems_5bf10e44-8f1c-4cb5-8bf5-0875a2bf2e9b%22",
      "Yes": 1997,
      "No": 2127
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Telecommunications Amendment (Repairing Assistance and Access) 2019",
      "Intro Senate": "2019-12-04",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1247",
      "id": "s1247",
      "Summary":
          "Amends the Telecommunications Act 1997 to: clarify actions that designated communications providers must not be requested or required to do in technical assistance requests, technical assistance notices or technical capability notices; require the Australian Federal Police Commissioner not to approve technical assistance notices issued by the chief officer of state or territory interception agencies unless satisfied that the requirements of the notice are reasonable and proportionate, and compliance with the notice is practicable and technically feasible; remove the ability of the minister to edit and delete information in relevant reports prepared by the Commonwealth Ombudsman; and insert a judicial authorisation requirement in the approval or varying of technical assistance requests, technical assistance notices or technical capability notices.",
      "Sponsor": "KENEALLY,SenKristina",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1247_first-senate/toc_word/19S1920.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1247_first-senate/toc_pdf/19S1920.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1247_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1247_ems_f415fdb9-1a32-412d-aaed-5d2999a5211c/upload_word/19S19em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1247_ems_f415fdb9-1a32-412d-aaed-5d2999a5211c/upload_pdf/19S19em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1247_ems_f415fdb9-1a32-412d-aaed-5d2999a5211c%22",
      "Yes": 2594,
      "No": 8153
    },
    {
      "Chamber": "Senate",
      "Short Title":
          "Telecommunications Legislation Amendment (Unsolicited Communications) 2019",
      "Intro Senate": "2019-02-13",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1181",
      "id": "s1181",
      "Summary":
          "Amends the: Commonwealth Electoral Act 1918 to require that voice calls communicating an electoral matter to a person must identify the use of any actors at the beginning of the call; Do Not Call Register Act 2006 to enable consumers who register on the Do Not Call Register to opt out of receiving phone calls from charities; Spam Act 2003 to require political parties to provide an unsubscribe function for all unsolicited electronic communications containing political content; and Telecommunications Act 1997 to make consequential amendments.",
      "Sponsor": "GRIFF,SenStirling",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1181_first-senate/toc_word/1904920.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1181_first-senate/toc_pdf/1904920.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1181_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1181_ems_585b0ce4-2b23-44e7-88be-7c6c74482e4c/upload_word/19049em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1181_ems_585b0ce4-2b23-44e7-88be-7c6c74482e4c/upload_pdf/19049em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1181_ems_585b0ce4-2b23-44e7-88be-7c6c74482e4c%22",
      "Yes": 3549,
      "No": 5768
    },
    {
      "Chamber": "Senate",
      "Short Title": "Transport Security Amendment (Testing and Training) 2019",
      "Intro Senate": "2019-12-04",
      "Passed Senate": "",
      "Intro House": "",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1252",
      "id": "s1252",
      "Summary":
          "Amends the Aviation Transport Security Act 2004 to: introduce powers for aviation security inspectors to conduct covert compliance testing of aviation industry participants' aviation security systems at all regulated locations; provide certain exemptions for aviation security inspectors from civil or criminal liability when they are covertly testing aviation industry participants' aviation security systems; and Aviation Transport Security Act,2004 and Maritime Transport and Offshore Facilities Security Act 2003 to: require screening officers to have completed relevant training and to hold relevant qualifications prior to exercising powers or performing screening functions; allow for the making of legislative instruments to determine training, qualifications and other requirements for specified screening officers in the exercise of powers or performance of screening functions, and requirements relating to the use of identity cards and uniforms; and make technical amendments.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1252_first-senate/toc_word/1924420.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1252_first-senate/toc_pdf/1924420.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1252_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1252_ems_350b7987-1855-4e11-823f-7a9af041b3c4/upload_word/723019em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1252_ems_350b7987-1855-4e11-823f-7a9af041b3c4/upload_pdf/723019em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1252_ems_350b7987-1855-4e11-823f-7a9af041b3c4%22",
      "Yes": 2943,
      "No": 1296
    },
    {
      "Chamber": "Senate",
      "Short Title": "Wine Australia Amendment (Label Directory) 2019",
      "Intro Senate": "2019-12-02",
      "Passed Senate": "2020-02-24",
      "Intro House": "2020-02-25",
      "Passed House": "",
      "Assent Date": "",
      "Act No.": "",
      "URL":
          "http://www.aph.gov.au/Parliamentary_Business/Bills_Legislation/Bills_Search_Results/Result?bId=s1243",
      "id": "s1243",
      "Summary":
          "Amends the Wine Australia Act 2013 to provide for Wine Australia to establish and maintain a directory of labels that are attached to grape products such as wine intended for export from Australia.",
      "Sponsor": "",
      "text link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1243_first-senate/toc_word/1921220.docx;fileType=application%2Fvnd%2Eopenxmlformats%2Dofficedocument%2Ewordprocessingml%2Edocument",
      "text link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/bills/s1243_first-senate/toc_pdf/1921220.pdf;fileType=application%2Fpdf",
      "text link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fbills%2Fs1243_first-senate%2F0000%22;rec=0",
      "em link doc":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1243_ems_d5baba5d-854e-4186-95a4-c4271021c8f8/upload_word/722602em.docx;fileType=application%2Fvnd.openxmlformats-officedocument.wordprocessingml.document",
      "em link pdf":
          "https://parlinfo.aph.gov.au/parlInfo/download/legislation/ems/s1243_ems_d5baba5d-854e-4186-95a4-c4271021c8f8/upload_pdf/722602em.pdf;fileType=application%2Fpdf",
      "em link html":
          "https://parlinfo.aph.gov.au/parlInfo/search/display/display.w3p;query=Id%3A%22legislation%2Fems%2Fs1243_ems_d5baba5d-854e-4186-95a4-c4271021c8f8%22",
      "Yes": 7132,
      "No": 489
    }
  ]);
}
