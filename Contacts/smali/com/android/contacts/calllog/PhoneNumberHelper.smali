.class public Lcom/android/contacts/calllog/PhoneNumberHelper;
.super Ljava/lang/Object;
.source "PhoneNumberHelper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/contacts/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    .line 35
    return-void
.end method


# virtual methods
.method public canPlaceCallsTo(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/android/contacts/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0015

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return v2

    :cond_0
    if-ne p2, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public canSendSmsTo(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "presentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "bypassVMCheck"    # Z

    .prologue
    .line 77
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    .end local p1    # "number":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 82
    .restart local p1    # "number":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/contacts/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/android/contacts/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    const-string p1, ""

    goto :goto_0

    .line 95
    :cond_4
    if-nez p4, :cond_5

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/android/contacts/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p3

    .line 104
    goto :goto_0
.end method

.method public isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
