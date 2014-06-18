.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# instance fields
.field private mAlternateIconDescriptionRes:I

.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mPresence:I

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/contacts/model/dataitem/DataItem;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 81
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 84
    const-string v32, ""

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn()I

    move-result v28

    .line 89
    .local v28, "typeValue":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 90
    .local v27, "type":Lcom/android/contacts/model/account/AccountType$EditType;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 91
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_5

    .line 93
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->labelRes:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 103
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v27    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    .end local v28    # "typeValue":I
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 107
    sget-object v32, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    move-wide/from16 v33, v0

    invoke-static/range {v32 .. v34}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v9

    .line 110
    .local v9, "hasPhone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v10

    .line 113
    .local v10, "hasSms":Z
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    move/from16 v32, v0

    if-eqz v32, :cond_a

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_3

    move-object/from16 v20, p2

    .line 115
    check-cast v20, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 116
    .local v20, "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v19

    .line 117
    .local v19, "number":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 119
    if-eqz v9, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 121
    .local v21, "phoneIntent":Landroid/content/Intent;
    :goto_1
    if-eqz v10, :cond_7

    new-instance v26, Landroid/content/Intent;

    const-string v32, "android.intent.action.SENDTO"

    const-string v33, "smsto"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    .local v26, "smsIntent":Landroid/content/Intent;
    :goto_2
    if-eqz v21, :cond_2

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    sget-object v33, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 131
    :cond_2
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    .line 132
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 133
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 134
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 135
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    .line 234
    .end local v19    # "number":Ljava/lang/String;
    .end local v20    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v21    # "phoneIntent":Landroid/content/Intent;
    .end local v26    # "smsIntent":Landroid/content/Intent;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v32, v0

    if-nez v32, :cond_4

    .line 236
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.VIEW"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v32, v0

    const/high16 v33, 0x80000

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    return-void

    .line 96
    .end local v9    # "hasPhone":Z
    .end local v10    # "hasSms":Z
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v27    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    .restart local v28    # "typeValue":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v32

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 119
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v27    # "type":Lcom/android/contacts/model/account/AccountType$EditType;
    .end local v28    # "typeValue":I
    .restart local v9    # "hasPhone":Z
    .restart local v10    # "hasSms":Z
    .restart local v19    # "number":Ljava/lang/String;
    .restart local v20    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 121
    .restart local v21    # "phoneIntent":Landroid/content/Intent;
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 136
    .restart local v26    # "smsIntent":Landroid/content/Intent;
    :cond_8
    if-eqz v9, :cond_9

    .line 137
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    .line 138
    :cond_9
    if-eqz v10, :cond_3

    .line 139
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    .line 143
    .end local v19    # "number":Ljava/lang/String;
    .end local v20    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v21    # "phoneIntent":Landroid/content/Intent;
    .end local v26    # "smsIntent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    move/from16 v32, v0

    if-eqz v32, :cond_b

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_3

    move-object/from16 v25, p2

    .line 145
    check-cast v25, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    .line 146
    .local v25, "sip":Lcom/android/contacts/model/dataitem/SipAddressDataItem;
    invoke-virtual/range {v25 .. v25}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "address":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 148
    const-string v32, "sip"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 149
    .local v5, "callUri":Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v33, v0

    sget-object v34, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static/range {v32 .. v34}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    goto/16 :goto_3

    .line 163
    .end local v3    # "address":Ljava/lang/String;
    .end local v5    # "callUri":Landroid/net/Uri;
    .end local v25    # "sip":Lcom/android/contacts/model/dataitem/SipAddressDataItem;
    :cond_b
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/EmailDataItem;

    move/from16 v32, v0

    if-eqz v32, :cond_c

    move-object/from16 v8, p2

    .line 164
    check-cast v8, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 165
    .local v8, "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "address":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 167
    const-string v32, "mailto"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v3, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 168
    .local v18, "mailUri":Landroid/net/Uri;
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.SENDTO"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 171
    .end local v3    # "address":Ljava/lang/String;
    .end local v8    # "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v18    # "mailUri":Landroid/net/Uri;
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    move/from16 v32, v0

    if-eqz v32, :cond_d

    move-object/from16 v31, p2

    .line 172
    check-cast v31, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    .line 173
    .local v31, "website":Lcom/android/contacts/model/dataitem/WebsiteDataItem;
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v29

    .line 174
    .local v29, "url":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 175
    new-instance v30, Landroid/net/WebAddress;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 176
    .local v30, "webAddress":Landroid/net/WebAddress;
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.VIEW"

    invoke-virtual/range {v30 .. v30}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    invoke-direct/range {v32 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 179
    .end local v29    # "url":Ljava/lang/String;
    .end local v30    # "webAddress":Landroid/net/WebAddress;
    .end local v31    # "website":Lcom/android/contacts/model/dataitem/WebsiteDataItem;
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    move/from16 v32, v0

    if-eqz v32, :cond_16

    move-object/from16 v13, p2

    .line 180
    check-cast v13, Lcom/android/contacts/model/dataitem/ImDataItem;

    .line 181
    .local v13, "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v16

    .line 182
    .local v16, "isEmail":Z
    if-nez v16, :cond_e

    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 183
    :cond_e
    if-eqz v16, :cond_12

    const/16 v24, 0x5

    .line 185
    .local v24, "protocol":I
    :goto_4
    if-eqz v16, :cond_f

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const/16 v33, 0x5

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 190
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 193
    :cond_f
    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v11

    .line 194
    .local v11, "host":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "data":Ljava/lang/String;
    const/16 v32, -0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    .line 197
    invoke-static/range {v24 .. v24}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v11

    .line 200
    :cond_10
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 201
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "authority":Ljava/lang/String;
    new-instance v32, Landroid/net/Uri$Builder;

    invoke-direct/range {v32 .. v32}, Landroid/net/Uri$Builder;-><init>()V

    const-string v33, "imto"

    invoke-virtual/range {v32 .. v33}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 204
    .local v14, "imUri":Landroid/net/Uri;
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.SENDTO"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 208
    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v6

    .line 209
    .local v6, "chatCapability":I
    and-int/lit8 v32, v6, 0x4

    if-eqz v32, :cond_13

    const/16 v17, 0x1

    .line 211
    .local v17, "isVideoChatCapable":Z
    :goto_5
    and-int/lit8 v32, v6, 0x1

    if-eqz v32, :cond_14

    const/4 v15, 0x1

    .line 213
    .local v15, "isAudioChatCapable":Z
    :goto_6
    if-nez v17, :cond_11

    if-eqz v15, :cond_3

    .line 214
    :cond_11
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.SENDTO"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "xmpp:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "?call"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    invoke-direct/range {v32 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 216
    if-eqz v17, :cond_15

    .line 217
    const v32, 0x7f020082

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 218
    const v32, 0x7f0b0155

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_3

    .line 183
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "chatCapability":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v11    # "host":Ljava/lang/String;
    .end local v14    # "imUri":Landroid/net/Uri;
    .end local v15    # "isAudioChatCapable":Z
    .end local v17    # "isVideoChatCapable":Z
    .end local v24    # "protocol":I
    :cond_12
    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto/16 :goto_4

    .line 209
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "chatCapability":I
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v11    # "host":Ljava/lang/String;
    .restart local v14    # "imUri":Landroid/net/Uri;
    .restart local v24    # "protocol":I
    :cond_13
    const/16 v17, 0x0

    goto :goto_5

    .line 211
    .restart local v17    # "isVideoChatCapable":Z
    :cond_14
    const/4 v15, 0x0

    goto :goto_6

    .line 220
    .restart local v15    # "isAudioChatCapable":Z
    :cond_15
    const v32, 0x7f020081

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 221
    const v32, 0x7f0b0154

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_3

    .line 226
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "chatCapability":I
    .end local v7    # "data":Ljava/lang/String;
    .end local v11    # "host":Ljava/lang/String;
    .end local v13    # "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v14    # "imUri":Landroid/net/Uri;
    .end local v15    # "isAudioChatCapable":Z
    .end local v16    # "isEmail":Z
    .end local v17    # "isVideoChatCapable":Z
    .end local v24    # "protocol":I
    :cond_16
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    move/from16 v32, v0

    if-eqz v32, :cond_3

    move-object/from16 v22, p2

    .line 227
    check-cast v22, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    .line 228
    .local v22, "postal":Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;
    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v23

    .line 229
    .local v23, "postalAddress":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 230
    invoke-static/range {v23 .. v23}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 284
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    .line 292
    :goto_0
    return-object v2

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v1, v3, Lcom/android/contacts/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 287
    .local v1, "resourcePackageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 291
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 292
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIconDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setPresence(I)V
    .locals 0
    .param p1, "presence"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    .line 250
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .param p1, "t"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    const/4 v1, 0x0

    .line 321
    if-nez p1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    .line 325
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 328
    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    .line 329
    .local v0, "that":Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
