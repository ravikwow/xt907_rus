.class final enum Lcom/motorola/blur/service/blur/Version$sec_t;
.super Ljava/lang/Enum;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "sec_t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/Version$sec_t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum build:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum carrier:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum flavour:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum geography:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum hardware:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum language:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum major:Lcom/motorola/blur/service/blur/Version$sec_t;

.field public static final enum minor:Lcom/motorola/blur/service/blur/Version$sec_t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "flavour"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->flavour:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "major"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->major:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "minor"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->minor:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "build"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->build:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "hardware"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->hardware:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "carrier"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->carrier:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "language"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->language:Lcom/motorola/blur/service/blur/Version$sec_t;

    new-instance v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    const-string v1, "geography"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/Version$sec_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->geography:Lcom/motorola/blur/service/blur/Version$sec_t;

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/blur/service/blur/Version$sec_t;

    sget-object v1, Lcom/motorola/blur/service/blur/Version$sec_t;->flavour:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/Version$sec_t;->major:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/Version$sec_t;->minor:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/blur/Version$sec_t;->build:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/blur/Version$sec_t;->hardware:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/blur/Version$sec_t;->carrier:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/blur/Version$sec_t;->language:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/blur/Version$sec_t;->geography:Lcom/motorola/blur/service/blur/Version$sec_t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->$VALUES:[Lcom/motorola/blur/service/blur/Version$sec_t;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/Version$sec_t;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/Version$sec_t;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/Version$sec_t;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/blur/service/blur/Version$sec_t;->$VALUES:[Lcom/motorola/blur/service/blur/Version$sec_t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/Version$sec_t;

    return-object v0
.end method
