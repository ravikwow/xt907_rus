.class public final enum Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;
.super Ljava/lang/Enum;
.source "MMApiWSRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

.field public static final enum GET:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

.field public static final enum NONE:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

.field public static final enum POST:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

.field public static final enum PUT:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->POST:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    new-instance v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->PUT:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    new-instance v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->GET:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    new-instance v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->NONE:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    sget-object v1, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->POST:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->PUT:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->GET:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->NONE:Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->$VALUES:[Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;->$VALUES:[Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/ws/MMApiWSRequest$HttpRequestType;

    return-object v0
.end method
