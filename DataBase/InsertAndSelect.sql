INSERT INTO Users (UserID, PhoneNumber, FirstName, LastName, UserName, Country) 
VALUES('BE09371A-DF1F-4352-B6FF-AEBDCEE4EA52', '07057948398', 'David', 'Okpoju', 'NimiCoder', 'Nigeria');

select newID();

select * from users;

insert into Contacts(ContactID, UserID, ContactUserID) 
values('41DCA08F-B07B-4798-9FD2-5DCED59AAC93', '457B7F2E-EC5B-4C5A-87FE-BA62846454A2', '457B7F2E-EC5B-4C5A-87FE-BA62846454A2');

select * from Contacts;

INSERT INTO GroupChat (GroupID, GroupName, CreatedBy, TextMessage, SenderID) 
VALUES('D395D7A3-6490-496E-A09B-DDB8C63F0216', 'Software Engineers', 'November 57 2022',
'How far guys, how about the project, how is it going.', '457B7F2E-EC5B-4C5A-87FE-BA62846454A2');

select * from GroupChat;

insert into Messages(MessageID, SenderID, ReceiverID, MessageText) VALUES('7AFED56A-4B19-4AAD-8FC1-3596B9769F8B', '457B7F2E-EC5B-4C5A-87FE-BA62846454A2',
'BE09371A-DF1F-4352-B6FF-AEBDCEE4EA52', 'Good evening bro.');

select * from messages;

--View Sender and receiver name together with the sent message.
SELECT 
Sender.FirstName AS SenderName, 
Recipient.FirstName AS RecepientName,
messages.MessageText,
messages.SentDate
FROM messages
JOIN users AS Sender ON Sender.UserID = Messages.SenderID
JOIN users AS Recipient ON Recipient.UserID = messages.ReceiverID;

--Creating view
--CREATE VIEW UserTable AS
--SELECT UserID, PhoneNumber, UserName
--FROM Users; 
