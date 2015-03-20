.class public Lcom/motorola/messaging/vcard/VCardEntry$NameData;
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
    name = "NameData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field private mFamily:Ljava/lang/String;

.field private mFormatted:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mMiddle:Ljava/lang/String;

.field private mPhoneticFamily:Ljava/lang/String;

.field private mPhoneticGiven:Ljava/lang/String;

.field private mPhoneticMiddle:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSortString:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/messaging/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/messaging/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public emptyPhoneticStructuredName()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emptyStructuredName()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-ne p0, p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    instance-of v3, p1, Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    if-nez v3, :cond_2

    move v1, v2

    .line 226
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 228
    check-cast v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;

    .line 230
    .local v0, "nameData":Lcom/motorola/messaging/vcard/VCardEntry$NameData;
    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->NAME:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 244
    const/16 v6, 0xa

    new-array v3, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v6, v3, v7

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x4

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x5

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x6

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    aput-object v8, v3, v6

    const/4 v6, 0x7

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    aput-object v8, v3, v6

    const/16 v6, 0x8

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    aput-object v8, v3, v6

    const/16 v6, 0x9

    iget-object v8, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    aput-object v8, v3, v6

    .line 247
    .local v3, "hashTargets":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 248
    .local v1, "hash":I
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 249
    .local v2, "hashTarget":Ljava/lang/String;
    mul-int/lit8 v8, v1, 0x1f

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_1
    add-int v1, v8, v6

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v6, v7

    .line 249
    goto :goto_1

    .line 251
    .end local v2    # "hashTarget":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 256
    const-string v0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
