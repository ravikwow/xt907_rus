.class public Lcom/android/mms/vcard/VCardEntry$EmailData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/mms/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput p2, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mType:I

    .line 407
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    .line 408
    iput-object p3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    .line 409
    iput-boolean p4, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    .line 410
    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/vcard/VCardEntry$EmailData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$EmailData;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    if-ne p0, p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v1

    .line 441
    :cond_1
    instance-of v3, p1, Lcom/android/mms/vcard/VCardEntry$EmailData;

    if-nez v3, :cond_2

    move v1, v2

    .line 442
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 444
    check-cast v0, Lcom/android/mms/vcard/VCardEntry$EmailData;

    .line 445
    .local v0, "emailData":Lcom/android/mms/vcard/VCardEntry$EmailData;
    iget v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mType:I

    iget v4, v0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntryLabel()Lcom/android/mms/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 453
    iget v0, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mType:I

    .line 454
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 455
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 456
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 457
    return v0

    :cond_1
    move v1, v2

    .line 454
    goto :goto_0

    .line 456
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 462
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/mms/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
