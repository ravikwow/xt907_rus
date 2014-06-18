.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# instance fields
.field private mDateView:Landroid/widget/Button;

.field private mNoDateString:Ljava/lang/String;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/EventFieldEditorView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 17

    .prologue
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v9, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 207
    .local v9, "column":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, "oldValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v13

    .line 210
    .local v13, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    .line 211
    .local v8, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 214
    .local v12, "defaultYear":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v7

    .line 217
    .local v7, "isYearOptional":Z
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    move v4, v12

    .line 220
    .local v4, "oldYear":I
    const/4 v5, 0x0

    .line 221
    .local v5, "oldMonth":I
    const/4 v6, 0x1

    .line 268
    .local v6, "oldDay":I
    :goto_0
    new-instance v3, Lcom/android/contacts/editor/EventFieldEditorView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v13, v9}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/dataitem/DataKind;Ljava/lang/String;)V

    .line 293
    .local v3, "callBack":Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    new-instance v1, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    .line 295
    .end local v3    # "callBack":Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :goto_1
    return-object v1

    .line 223
    :cond_0
    new-instance v15, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 225
    .local v15, "position":Ljava/text/ParsePosition;
    iget-object v2, v13, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 226
    .local v10, "date1":Ljava/util/Date;
    if-nez v10, :cond_1

    .line 228
    invoke-static {v14}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 230
    :cond_1
    if-eqz v10, :cond_2

    .line 231
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 232
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 233
    .restart local v4    # "oldYear":I
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 234
    .restart local v5    # "oldMonth":I
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "oldDay":I
    goto :goto_0

    .line 241
    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_2
    const-string v2, "--02-29"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    if-eqz v7, :cond_3

    sget v4, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    .line 243
    .restart local v4    # "oldYear":I
    :goto_2
    const/4 v5, 0x1

    .line 244
    .restart local v5    # "oldMonth":I
    const/16 v6, 0x1d

    .restart local v6    # "oldDay":I
    goto :goto_0

    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_3
    move v4, v12

    .line 242
    goto :goto_2

    .line 249
    :cond_4
    const/4 v11, 0x0

    .line 250
    .local v11, "date2":Ljava/util/Date;
    iget-object v2, v13, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_5

    .line 251
    iget-object v2, v13, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v11

    .line 253
    :cond_5
    if-nez v11, :cond_6

    .line 254
    invoke-static {v14}, Lcom/android/contacts/util/DateUtils;->parseDateWithoutYear(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 259
    :cond_6
    if-nez v11, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    .line 261
    :cond_7
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 262
    if-eqz v7, :cond_8

    sget v4, Lcom/android/contacts/datepicker/DatePickerDialog;->NO_YEAR:I

    .line 263
    .restart local v4    # "oldYear":I
    :goto_3
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 264
    .restart local v5    # "oldMonth":I
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .restart local v6    # "oldDay":I
    goto :goto_0

    .end local v4    # "oldYear":I
    .end local v5    # "oldMonth":I
    .end local v6    # "oldDay":I
    :cond_8
    move v4, v12

    .line 262
    goto :goto_3
.end method

.method public static getDefaultHourForBirthday()I
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0x8

    return v0
.end method

.method private rebuildDateView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 123
    .local v2, "editField":Lcom/android/contacts/model/account/AccountType$EditField;
    iget-object v0, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 124
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 132
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clearAllFields()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v2, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    iget-object v1, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v0, v1, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 313
    .local v0, "column":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, "dialogId":I
    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 149
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001a
        :pswitch_0
    .end packed-switch
.end method

.method public editNewlyAddedField()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/EventFieldEditorView;->showDialog(I)V

    .line 96
    return-void
.end method

.method protected bridge synthetic getType()Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/model/account/AccountType$EventEditType;
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType$EventEditType;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 139
    .local v1, "editField":Lcom/android/contacts/model/account/AccountType$EditField;
    iget-object v0, v1, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 140
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 79
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    .line 81
    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    .line 82
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b018a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    .line 84
    const v1, 0x7f0600d0

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    .line 85
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditField;

    iget-object v7, v2, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 164
    .local v7, "column":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "oldValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v11

    .line 167
    .local v11, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 171
    .local v1, "defaultYear":I
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/account/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v10

    .line 173
    .local v10, "isYearOptional":Z
    if-nez v10, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-static {v12}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 179
    .local v9, "isYearExistInOldValue":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 200
    .end local v9    # "isYearExistInOldValue":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v9, v5

    .line 178
    goto :goto_0

    .line 182
    .restart local v9    # "isYearExistInOldValue":Z
    :cond_2
    new-instance v13, Ljava/text/ParsePosition;

    invoke-direct {v13, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 185
    .local v13, "position":Ljava/text/ParsePosition;
    iget-object v2, v11, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, v11, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v12, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    .line 190
    .local v8, "date2":Ljava/util/Date;
    if-eqz v8, :cond_0

    .line 193
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 194
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 197
    iget-object v2, v11, Lcom/android/contacts/model/dataitem/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    goto :goto_1
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 101
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kind must have 1 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 116
    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p4, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    .line 119
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
