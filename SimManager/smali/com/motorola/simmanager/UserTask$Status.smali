.class public final enum Lcom/motorola/simmanager/UserTask$Status;
.super Ljava/lang/Enum;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/simmanager/UserTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/simmanager/UserTask$Status;

.field public static final enum FINISHED:Lcom/motorola/simmanager/UserTask$Status;

.field public static final enum PENDING:Lcom/motorola/simmanager/UserTask$Status;

.field public static final enum RUNNING:Lcom/motorola/simmanager/UserTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    new-instance v0, Lcom/motorola/simmanager/UserTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/motorola/simmanager/UserTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/UserTask$Status;->PENDING:Lcom/motorola/simmanager/UserTask$Status;

    .line 181
    new-instance v0, Lcom/motorola/simmanager/UserTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/motorola/simmanager/UserTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/UserTask$Status;->RUNNING:Lcom/motorola/simmanager/UserTask$Status;

    .line 185
    new-instance v0, Lcom/motorola/simmanager/UserTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/simmanager/UserTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/simmanager/UserTask$Status;->FINISHED:Lcom/motorola/simmanager/UserTask$Status;

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/simmanager/UserTask$Status;

    sget-object v1, Lcom/motorola/simmanager/UserTask$Status;->PENDING:Lcom/motorola/simmanager/UserTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/simmanager/UserTask$Status;->RUNNING:Lcom/motorola/simmanager/UserTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/simmanager/UserTask$Status;->FINISHED:Lcom/motorola/simmanager/UserTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/UserTask$Status;->$VALUES:[Lcom/motorola/simmanager/UserTask$Status;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/simmanager/UserTask$Status;
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/motorola/simmanager/UserTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/simmanager/UserTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/motorola/simmanager/UserTask$Status;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/motorola/simmanager/UserTask$Status;->$VALUES:[Lcom/motorola/simmanager/UserTask$Status;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/simmanager/UserTask$Status;

    return-object v0
.end method
