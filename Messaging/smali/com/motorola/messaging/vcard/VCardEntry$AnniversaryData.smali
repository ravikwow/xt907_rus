.class public Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;
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
    name = "AnniversaryData"
.end annotation


# instance fields
.field private final mAnniversary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "anniversary"    # Ljava/lang/String;

    .prologue
    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    iput-object p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    .line 1296
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1317
    if-ne p0, p1, :cond_0

    .line 1318
    const/4 v1, 0x1

    .line 1324
    :goto_0
    return v1

    .line 1320
    :cond_0
    instance-of v1, p1, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;

    if-nez v1, :cond_1

    .line 1321
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1323
    check-cast v0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;

    .line 1324
    .local v0, "anniversaryData":Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;
    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1339
    sget-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anniversary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
