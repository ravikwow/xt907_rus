.class public Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;
.super Ljava/lang/Object;
.source "SmartDialerUtil.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphaDialableInputFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ok([CC)Z
    .locals 2
    .param p0, "accept"    # [C
    .param p1, "c"    # C

    .prologue
    .line 150
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 151
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 152
    const/4 v1, 0x1

    .line 155
    :goto_1
    return v1

    .line 150
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;->getAcceptedChars()[C

    move-result-object v0

    .line 115
    .local v0, "accept":[C
    const/4 v1, 0x0

    .line 118
    .local v1, "filter":Z
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 119
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    :cond_0
    if-ne v3, p3, :cond_3

    .line 126
    const/4 v2, 0x0

    .line 146
    :cond_1
    :goto_1
    return-object v2

    .line 118
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_3
    sub-int v6, p3, p2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 131
    const-string v2, ""

    goto :goto_1

    .line 134
    :cond_4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 136
    .local v2, "filtered":Landroid/text/SpannableStringBuilder;
    sub-int/2addr v3, p2

    .line 137
    sub-int/2addr p3, p2

    .line 139
    sub-int v5, p3, p2

    .line 141
    .local v5, "len":I
    add-int/lit8 v4, p3, -0x1

    .local v4, "j":I
    :goto_2
    if-lt v4, v3, :cond_1

    .line 142
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/motorola/contacts/dialpad/SmartDialerUtil$AlphaDialableInputFilter;->ok([CC)Z

    move-result v6

    if-nez v6, :cond_5

    .line 143
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 141
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 109
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789#*+-(),/. ;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method
