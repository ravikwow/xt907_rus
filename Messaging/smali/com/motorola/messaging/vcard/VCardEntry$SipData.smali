.class public Lcom/motorola/messaging/vcard/VCardEntry$SipData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/motorola/messaging/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SipData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "rawSip"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    const-string v0, "sip:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    .line 1362
    :goto_0
    iput p2, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mType:I

    .line 1363
    iput-object p3, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    .line 1364
    iput-boolean p4, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mIsPrimary:Z

    .line 1365
    return-void

    .line 1360
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1392
    if-ne p0, p1, :cond_1

    .line 1399
    :cond_0
    :goto_0
    return v1

    .line 1395
    :cond_1
    instance-of v3, p1, Lcom/motorola/messaging/vcard/VCardEntry$SipData;

    if-nez v3, :cond_2

    move v1, v2

    .line 1396
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1398
    check-cast v0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;

    .line 1399
    .local v0, "sipData":Lcom/motorola/messaging/vcard/VCardEntry$SipData;
    iget v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mType:I

    iget v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1421
    sget-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->SIP:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1407
    iget v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mType:I

    .line 1408
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 1409
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 1410
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 1411
    return v0

    :cond_1
    move v1, v2

    .line 1408
    goto :goto_0

    .line 1410
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$SipData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
