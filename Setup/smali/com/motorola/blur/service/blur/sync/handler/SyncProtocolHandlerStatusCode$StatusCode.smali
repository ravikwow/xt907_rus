.class public final enum Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
.super Ljava/lang/Enum;
.source "SyncProtocolHandlerStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum E_WS_COMMIT_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum E_WS_COMMIT_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum E_WS_UPDATE_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum E_WS_UPDATE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum S_CANCELED:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum S_OK:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum S_SYNC_TASK_TIMEOUT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

.field public static final enum S_WARNING:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;


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

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "S_OK"

    const/16 v2, -0xa

    const-string v3, "Ok"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_OK:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "S_WARNING"

    const/16 v2, -0x14

    const-string v3, "Warning"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_WARNING:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "S_CANCELED"

    const/16 v2, -0x1e

    const-string v3, "Canceled"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_CANCELED:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "S_SYNC_TASK_TIMEOUT"

    const/16 v2, -0x28

    const-string v3, "A sync task took longer than the prescribed timeout"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_SYNC_TASK_TIMEOUT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    .line 30
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "E_WS_UPDATE_MAY_BE_RECOVERABLE"

    const/16 v2, 0xbb8

    const-string v3, "Possibly recoverable error in ws update call"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "E_WS_COMMIT_MAY_BE_RECOVERABLE"

    const/4 v2, 0x5

    const/16 v3, 0xc1c

    const-string v4, "Possibly recoverable error in ws commit call"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    .line 33
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "E_UNKNOWN"

    const/4 v2, 0x6

    const/16 v3, 0x1388

    const-string v4, "Unknown error."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "E_INTERNAL_CLIENT"

    const/4 v2, 0x7

    const/16 v3, 0x13ec

    const-string v4, "Internal error in sync client"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "E_WS_UPDATE_UNRECOVERABLE"

    const/16 v2, 0x8

    const/16 v3, 0x1450

    const-string v4, "Irrecoverable error in ws update call"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    .line 34
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v1, "E_WS_COMMIT_UNRECOVERABLE"

    const/16 v2, 0x9

    const/16 v3, 0x14b4

    const-string v4, "Irrecoverable error in ws commit call"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_OK:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_WARNING:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_CANCELED:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_SYNC_TASK_TIMEOUT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_MAY_BE_RECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_UPDATE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_WS_COMMIT_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mValue:I

    .line 42
    iput-object p4, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mDescription:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static fromValue(I)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 46
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->values()[Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 47
    .local v2, "iter":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    iget v4, v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mValue:I

    if-ne v4, p0, :cond_0

    .line 51
    .end local v2    # "iter":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    :goto_1
    return-object v2

    .line 46
    .restart local v2    # "iter":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "iter":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    :cond_1
    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mValue:I

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mValue:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayBeRecoverable()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mValue:I

    const/16 v1, 0x1388

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayNotBeRecoverable()Z
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mValue:I

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_0

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
    .line 55
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->mDescription:Ljava/lang/String;

    return-object v0
.end method
