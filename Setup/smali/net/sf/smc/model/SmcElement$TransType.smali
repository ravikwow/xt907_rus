.class public final enum Lnet/sf/smc/model/SmcElement$TransType;
.super Ljava/lang/Enum;
.source "SmcElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/model/SmcElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/sf/smc/model/SmcElement$TransType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/smc/model/SmcElement$TransType;

.field public static final enum TRANS_NOT_SET:Lnet/sf/smc/model/SmcElement$TransType;

.field public static final enum TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

.field public static final enum TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

.field public static final enum TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    new-instance v0, Lnet/sf/smc/model/SmcElement$TransType;

    const-string v1, "TRANS_NOT_SET"

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/model/SmcElement$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_NOT_SET:Lnet/sf/smc/model/SmcElement$TransType;

    .line 258
    new-instance v0, Lnet/sf/smc/model/SmcElement$TransType;

    const-string v1, "TRANS_SET"

    invoke-direct {v0, v1, v3}, Lnet/sf/smc/model/SmcElement$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    .line 269
    new-instance v0, Lnet/sf/smc/model/SmcElement$TransType;

    const-string v1, "TRANS_PUSH"

    invoke-direct {v0, v1, v4}, Lnet/sf/smc/model/SmcElement$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    .line 275
    new-instance v0, Lnet/sf/smc/model/SmcElement$TransType;

    const-string v1, "TRANS_POP"

    invoke-direct {v0, v1, v5}, Lnet/sf/smc/model/SmcElement$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/sf/smc/model/SmcElement$TransType;

    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_NOT_SET:Lnet/sf/smc/model/SmcElement$TransType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_SET:Lnet/sf/smc/model/SmcElement$TransType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_PUSH:Lnet/sf/smc/model/SmcElement$TransType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/sf/smc/model/SmcElement$TransType;->TRANS_POP:Lnet/sf/smc/model/SmcElement$TransType;

    aput-object v1, v0, v5

    sput-object v0, Lnet/sf/smc/model/SmcElement$TransType;->$VALUES:[Lnet/sf/smc/model/SmcElement$TransType;

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
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/smc/model/SmcElement$TransType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    const-class v0, Lnet/sf/smc/model/SmcElement$TransType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/sf/smc/model/SmcElement$TransType;

    return-object v0
.end method

.method public static values()[Lnet/sf/smc/model/SmcElement$TransType;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lnet/sf/smc/model/SmcElement$TransType;->$VALUES:[Lnet/sf/smc/model/SmcElement$TransType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/smc/model/SmcElement$TransType;

    return-object v0
.end method
