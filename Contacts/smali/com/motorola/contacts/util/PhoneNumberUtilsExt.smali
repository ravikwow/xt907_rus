.class public Lcom/motorola/contacts/util/PhoneNumberUtilsExt;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "phoneNumberE164"    # Ljava/lang/String;
    .param p3, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hyphenation_feature_enabled"

    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 45
    .local v0, "hyphenStatus":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    .end local p1    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return-object p1

    .end local v0    # "hyphenStatus":Z
    .restart local p1    # "phoneNumber":Ljava/lang/String;
    :cond_0
    move v0, v1

    .line 43
    goto :goto_0

    .line 48
    .restart local v0    # "hyphenStatus":Z
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
