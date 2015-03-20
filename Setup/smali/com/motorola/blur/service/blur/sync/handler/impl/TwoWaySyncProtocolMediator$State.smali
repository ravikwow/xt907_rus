.class final enum Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
.super Ljava/lang/Enum;
.source "TwoWaySyncProtocolMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum ACK_CLIENT_ANCHOR_CHANGE_1:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum ACK_CLIENT_ANCHOR_CHANGE_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum CHECK_ADAPTER_FOR_CHANGES_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum CHECK_ADAPTER_FOR_CHANGES_IF_UNFORCED:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum COMMIT_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum GET_CHANGES_FROM_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum GET_UPDATE_FROM_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum REPORT_BAD_UPDATE:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum RESOLVE_CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum SEND_COMMIT_TO_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum START:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum SUCCESS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum UPDATE_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum UPDATE_ADAPTER_AFTER_CONFLICT_RESOLUTION:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

.field public static final enum WARNING:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->START:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "CHECK_ADAPTER_FOR_CHANGES_IF_UNFORCED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_IF_UNFORCED:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "GET_CLIENT_ANCHOR"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "GET_UPDATE_FROM_WS"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_UPDATE_FROM_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "UPDATE_ADAPTER"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "ACK_CLIENT_ANCHOR_CHANGE_1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_1:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "RESET_ADAPTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "RESOLVE_CONFLICTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESOLVE_CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "UPDATE_ADAPTER_AFTER_CONFLICT_RESOLUTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER_AFTER_CONFLICT_RESOLUTION:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "CHECK_ADAPTER_FOR_CHANGES_2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "GET_CHANGES_FROM_ADAPTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CHANGES_FROM_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "SEND_COMMIT_TO_WS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SEND_COMMIT_TO_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "COMMIT_ADAPTER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->COMMIT_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "ACK_CLIENT_ANCHOR_CHANGE_2"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "SUCCESS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SUCCESS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "WARNING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->WARNING:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "REPORT_BAD_UPDATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->REPORT_BAD_UPDATE:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    const-string v1, "ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    .line 80
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->START:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_IF_UNFORCED:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_UPDATE_FROM_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_1:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESOLVE_CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER_AFTER_CONFLICT_RESOLUTION:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CHANGES_FROM_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SEND_COMMIT_TO_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->COMMIT_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SUCCESS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->WARNING:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->REPORT_BAD_UPDATE:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    return-object v0
.end method
