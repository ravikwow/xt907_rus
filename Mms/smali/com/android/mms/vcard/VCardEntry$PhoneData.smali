.class public Lcom/android/mms/vcard/VCardEntry$PhoneData;
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
    name = "PhoneData"
.end annotation


# instance fields
.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    .line 317
    iput p2, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mType:I

    .line 318
    iput-object p3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    .line 319
    iput-boolean p4, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    .line 320
    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/vcard/VCardEntry$PhoneData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/vcard/VCardEntry$PhoneData;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    if-ne p0, p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 351
    :cond_1
    instance-of v3, p1, Lcom/android/mms/vcard/VCardEntry$PhoneData;

    if-nez v3, :cond_2

    move v1, v2

    .line 352
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 354
    check-cast v0, Lcom/android/mms/vcard/VCardEntry$PhoneData;

    .line 355
    .local v0, "phoneData":Lcom/android/mms/vcard/VCardEntry$PhoneData;
    iget v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mType:I

    iget v4, v0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/android/mms/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/android/mms/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/mms/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 363
    iget v0, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mType:I

    .line 364
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 365
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 366
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 367
    return v0

    :cond_1
    move v1, v2

    .line 364
    goto :goto_0

    .line 366
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 372
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/mms/vcard/VCardEntry$PhoneData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
