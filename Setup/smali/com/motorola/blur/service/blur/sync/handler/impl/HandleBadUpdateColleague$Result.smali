.class public final enum Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
.super Ljava/lang/Enum;
.source "HandleBadUpdateColleague.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

.field public static final enum ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

.field public static final enum OK:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    const-string v1, "ERROR_INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->$VALUES:[Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    return-object v0
.end method
