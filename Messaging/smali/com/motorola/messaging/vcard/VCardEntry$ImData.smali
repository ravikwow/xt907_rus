.class public Lcom/motorola/messaging/vcard/VCardEntry$ImData;
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
    name = "ImData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mCustomProtocol:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mProtocol:I

.field private final mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "protocol"    # I
    .param p2, "customProtocol"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isPrimary"    # Z

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iput p1, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mProtocol:I

    .line 883
    iput-object p2, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    .line 884
    iput p4, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mType:I

    .line 885
    iput-object p3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    .line 886
    iput-boolean p5, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mIsPrimary:Z

    .line 887
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 915
    if-ne p0, p1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v1

    .line 918
    :cond_1
    instance-of v3, p1, Lcom/motorola/messaging/vcard/VCardEntry$ImData;

    if-nez v3, :cond_2

    move v1, v2

    .line 919
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 921
    check-cast v0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;

    .line 922
    .local v0, "imData":Lcom/motorola/messaging/vcard/VCardEntry$ImData;
    iget v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mType:I

    iget v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mProtocol:I

    iget v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mProtocol:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mIsPrimary:Z

    iget-boolean v4, v0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 948
    sget-object v0, Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;->IM:Lcom/motorola/messaging/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 931
    iget v0, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mType:I

    .line 932
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mProtocol:I

    add-int v0, v1, v3

    .line 933
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 934
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 935
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mIsPrimary:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_1
    add-int v0, v2, v1

    .line 936
    return v0

    :cond_1
    move v1, v2

    .line 933
    goto :goto_0

    .line 935
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 941
    const-string v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mCustomProtocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/motorola/messaging/vcard/VCardEntry$ImData;->mIsPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
