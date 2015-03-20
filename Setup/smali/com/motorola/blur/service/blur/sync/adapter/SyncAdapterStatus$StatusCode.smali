.class public final enum Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
.super Ljava/lang/Enum;
.source "SyncAdapterStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum E_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum E_DB_TIMEOUT:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum E_PARSE:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum E_PROVIDER_ERROR:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum S_OK:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

.field public static final enum S_WARNING:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 24
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "S_OK"

    const/16 v2, -0xa

    const-string v3, "Ok"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->S_OK:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "S_WARNING"

    const/16 v2, -0x14

    const-string v3, "Warning"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->S_WARNING:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "E_UNKNOWN"

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v7, v5, v2}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "E_PARSE"

    const/16 v2, 0x3e8

    const-string v3, "Error parsing provided changelist"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_PARSE:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    .line 25
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "E_PROVIDER_ERROR"

    const/16 v2, 0x44c

    const-string v3, "Error in accessing or modifying provider"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_PROVIDER_ERROR:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    .line 26
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "E_DB_TIMEOUT"

    const/4 v2, 0x5

    const/16 v3, 0x4b0

    const-string v4, "Timeout in obtaining DB transaction lock."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_DB_TIMEOUT:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    .line 27
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    const-string v1, "E_ANCHOR_MISMATCH"

    const/4 v2, 0x6

    const/16 v3, 0x514

    const-string v4, "Anchor mismatch"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->S_OK:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->S_WARNING:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_PARSE:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_PROVIDER_ERROR:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_DB_TIMEOUT:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->$VALUES:[Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "extendedStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->mValue:I

    .line 35
    iput-object p4, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->mDescription:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static fromValue(I)Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 39
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->values()[Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 40
    .local v2, "iter":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    iget v4, v2, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->mValue:I

    if-ne v4, p0, :cond_0

    .line 44
    .end local v2    # "iter":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    :goto_1
    return-object v2

    .line 39
    .restart local v2    # "iter":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "iter":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    :cond_1
    sget-object v2, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->$VALUES:[Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->mValue:I

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->mValue:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus$StatusCode;->mDescription:Ljava/lang/String;

    return-object v0
.end method
