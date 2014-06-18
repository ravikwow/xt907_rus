.class public Lcom/motorola/contacts/dialpad/SmartDialerUtil;
.super Ljava/lang/Object;
.source "SmartDialerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static hasDigitsChar(Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v5

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 80
    .local v4, "tempArray":[C
    move-object v0, v4

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 81
    .local v1, "ch":C
    const/16 v6, 0x30

    if-lt v1, v6, :cond_2

    const/16 v6, 0x39

    if-gt v1, v6, :cond_2

    .line 82
    const/4 v5, 0x1

    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 49
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noAlphaChar(Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v5

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 97
    .local v4, "tempArray":[C
    move-object v0, v4

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 98
    .local v1, "ch":C
    const/16 v6, 0x61

    if-lt v1, v6, :cond_2

    const/16 v6, 0x7a

    if-le v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x41

    if-lt v1, v6, :cond_4

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_4

    .line 99
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 97
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v4, 0x0

    .line 67
    :goto_0
    return-object v4

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 59
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 63
    .local v0, "c":C
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->isSeparator(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
