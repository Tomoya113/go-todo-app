package service

import (
	"context"

	"github.com/Tomoya113/go-todo-app/entity"
	"github.com/Tomoya113/go-todo-app/store"
)

type TaskAdder interface {
	AddTask(ctx context.Context, db store.Execer, t *entity.Task) error
}

type TaskLister interface {
	ListTasks(ctx context.Context, db store.Queryer) (entity.Tasks, error)
}

type UserRegister interface {
	RegisterUser(ctx context.Context, db store.Execer, u *entity.User) error
}
